# frozen_string_literal: true

Home = Syro.new(BasicDeck) do
  on 'about' do
    get do
      render 'views/about.mote'
    end
  end

  on 'events' do
    on :id do
      @event = Event.find?(inbox[:id])
      get do
        if req.xhr?
          res.json(@event&.to_json || '{}')
        else
          render 'views/events_show.mote', event: @event
        end
      end
    end

    get do
      @events = Event.next.order_by(start_at: :asc)
      render 'views/events.mote', events: @events
    end
  end

  on 'botodex' do
    get do
      @bots = Bot
      render 'views/botodex.mote', bots: @bots
    end
  end

  either 'cookies', 'use-of-cookies' do
    get do
      render 'views/cookies.mote'
    end
  end

  on 'donate' do
    get do
      render 'views/donate.mote'
    end
  end

  on 'login' do
    get do
      render 'views/login.mote'
    end

    post do
      on user_mock.mockable? && !login(User, user_mock.get.nickname, user_mock.password).nil? do
        flash_success(_('You successfully logged in'))
        res.redirect(req[:return] || '/')
      end

      on !login(User, req[:identifier], req[:password]).nil? do
        flash_success _('You successfully logged in')
        remember(authenticated(User)) if req[:remember]
        res.redirect(req[:return] || '/')
      end

      default do
        flash_danger _('Something is going wrong with your credentials')
        render 'views/login.mote', params: { identifier: req[:identifier],
                                             password: req[:password],
                                             remember: req[:remember] }
      end
    end
  end

  on 'logout' do
    on req.get? || req.delete? do
      root do
        res.status = 200
        user_mock.mockable? && user_mock.delete
        logout(User)
        flash_success _('You successfully logged out')
        res.redirect '/'
      end
    end
  end

  on 'mods' do
    get do
      @mods = Mod
      render 'views/mods.mote', mods: @mods
    end
  end

  on 'privacy' do
    get do
      render 'views/privacy.mote'
    end
  end

  on 'relics' do
    get do
      @relics = Relic
      render 'views/relics.mote', relics: @relics
    end
  end

  on 'reset-password' do
    on :reset_token do
      user_id = signer.decode(inbox[:reset_token])
      user = User[user_id]

      on !user.nil? do
        get do
          render 'views/reset_password_update.mote'
        end

        post do
          # TODO(fenicks): implement the password validation and update
          filter = PasswordValidation.new(req.params)
          if filter.valid? && user.update(filter.slice(:password))
            flash_success _('Your password is updated, please login')
            res.redirect '/logout'
          else
            filter.errors.each do |error|
              next unless error.first.eql?(:password)

              flash_danger(_('Password is not in correct range, please contact-us')) if error.last.include?(:not_in_range)
              flash_danger(_('Password is needed')) if error.last.include?(:not_present)
              flash_danger(_("Password doesn't match")) if error.last.include?(:not_password_match)
            end
            render 'views/reset_password_update.mote', params: filter.slice(:password, :password_confirmation) || {}
          end
        end
      end

      default do
        flash_danger _('Error when reseting your password or invalide token')
        res.redirect '/reset-password'
      end
    end

    get do
      render 'views/reset_password.mote'
    end

    post do
      identifier = req[:identifier].to_s
      password_reset_user = User.where(email: identifier).first || User.where(nickname: identifier).first
      password_reset_token = signer.encode(password_reset_user&.id)

      on !password_reset_user.nil? do
        if password_reset_token
          # TODO(fenicks): send an email with background job processor
          email_body_text = mote('mails/password_reset.text.mote', password_reset_url: "#{base_url}/reset-password/#{password_reset_token}",
                                                                   nickname: password_reset_user.nickname)
          email_body_html = mote('mails/password_reset.html.mote', password_reset_url: "#{base_url}/reset-password/#{password_reset_token}",
                                                                   nickname: password_reset_user.nickname)
          Mail.deliver do
            content_type 'text/plain; charset=UTF-8'
            from ENV['APP_AWS_SES_FROM_NOREPLY'] || 'noreply@forgedtofight.io'
            to password_reset_user.email
            subject _('ForgedToFight.IO password reset')

            text_part do
              content_type 'text/plain; charset=UTF-8'
              body email_body_text
            end

            html_part do
              content_type 'text/html; charset=UTF-8'
              body email_body_html
            end
          end
          flash_success _('Check your email to reset your password')
        else
          flash_danger _("Couldn't attribute a valid token, retry or contact our technical team")
          res.redirect '/reset-password'
        end
        req.params.clear
        res.redirect '/'
      end

      default do
        flash_danger _('Could not send recover information for this identifier')
        render 'views/reset_password.mote', params: { identifier: req[:identifier] }
      end
    end
  end

  on 'signup' do
    on :activate do
      user_id = signer.decode(inbox[:activate])
      user = User.unscoped.where(id: user_id).first

      on user.nil? do
        flash_danger _('Signup link is expired, try to subscribe now')
        res.redirect '/signup'
      end

      on !user.nil? do
        if user.update(status: :active)
          authenticate(user)
          flash_success _('Welcome to ForgedToFight.IO website')
          res.redirect '/'
        else
          # /!\ Ensure status could be later retried for activation
          user.update(status: :pending)
          flash_danger _('We could not activate your account')
          flash_danger _('Please retry or contact our technical team')
          res.redirect '/signup'
        end
      end

      default do
        flash_danger _('Error when trying to activate your account')
        res.redirect '/signup'
      end
    end

    get do
      render 'views/signup.mote'
    end

    post do
      filter = SignupValidation.new(req.params)
      if filter.valid?
        if User.create(filter.slice(:email, :nickname, :password))
          signup_user = User.unscoped.where(email: filter.email).first
          if !signup_user.nil?
            signup_token = signer.encode(signup_user.id)
            # TODO(fenicks): send an email with background job processor
            email_body_text = mote('mails/signup.text.mote', signup_url: "#{base_url}/signup/#{signup_token}",
                                                             nickname: signup_user.nickname)
            email_body_html = mote('mails/signup.html.mote', signup_url: "#{base_url}/signup/#{signup_token}",
                                                             nickname: signup_user.nickname)
            Mail.deliver do
              content_type 'text/plain; charset=UTF-8'
              from ENV['APP_AWS_SES_FROM_NOREPLY'] || 'noreply@forgedtofight.io'
              to signup_user.email
              subject _('ForgedToFight.IO signup')

              text_part do
                content_type 'text/plain; charset=UTF-8'
                body email_body_text
              end

              html_part do
                content_type 'text/html; charset=UTF-8'
                body email_body_html
              end
            end
            flash_success _('Check your email box to activate your account')
          else
            flash_danger _("Couldn't find your user account, please signup or report the issue")
          end
        else
          flash_danger _("Couldn't create your user, retry or report the issue")
        end
        render 'views/signup.mote'
      else
        filter.errors.each do |error|
          if error.first.eql?(:email)
            flash_danger(_('Email is needed')) if error.last.include?(:not_present)
            flash_danger(_('Email is already taken')) if error.last.include?(:not_unique)
            flash_danger(_('Email address is not well formated')) if error.last.include?(:not_email)
          elsif error.first.eql?(:nickname)
            flash_danger(_('Nickname is needed')) if error.last.include?(:not_present)
            flash_danger(_('Nickname is already taken')) if error.last.include?(:not_unique)
          elsif error.first.eql?(:password)
            flash_danger(_('Password is not in correct range, please contact-us')) if error.last.include?(:not_in_range)
            flash_danger(_('Password is needed')) if error.last.include?(:not_present)
            flash_danger(_("Password doesn't match")) if error.last.include?(:not_password_match)
          end
        end
        render 'views/signup.mote', params: filter.slice(:email, :nickname) || {}
      end
    end
  end

  on 'support' do
    get do
      render 'views/support.mote'
    end
  end

  either 'tos', 'terms-of-service' do
    get do
      render 'views/terms_of_service.mote'
    end
  end

  get do
    @data = {
      upcoming_bot: Event.upcoming_bot.order_by(start_at: :desc).first,
      calendar_bot: Event.calendar_bot.first,
      upcoming_arena: Event.upcoming_arena.order_by(:start_at).first
    }
    render 'views/home.mote', data: @data
  end
end
