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

  on 'login' do
    get do
      render 'views/login.mote'
    end

    post do
      on user_mock.mockable? do
        if login(User, user_mock.get.nickname, user_mock.password)
          flash_success _('You successfully logged in')
        end
        res.redirect(req[:return] || '/')
      end

      on !login(User, req[:identifier], req[:password]).nil? do
        flash_success _('You successfully logged in')
        remember(authenticated(User)) if req[:remember]
        res.redirect(req[:return] || '/')
      end

      default do
        flash_danger _('Something is going wrong with your credentials')
        res.redirect '/login'
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
    get do
      render 'views/reset_password.mote'
    end

    post do
      identifier = req[:identifier].to_s
      user = (User.where(email: identifier) ||
                User.where(nickname: identifier)).first

      on !user.nil? do
        # TODO(fenicks): send an email with background job processor
        flash_success _('Check your email to reset your password')
        req.params.clear
        res.redirect '/'
      end

      default do
        text = _('Could not send recover information for this identifier')
        flash_danger text
        res.redirect '/reset-password'
      end
    end
  end

  on 'signup' do
    on :activate do
      user = User.unscoped.find(signup_token: inbox[:activate])
      on !user.nil? do
        ok = user.queue_atomic do
          user.update(status: :active) && user.unset(:signup_token)
        end
        if ok
          # TODO(fenicks): send a welcome email
          authenticate(user)
          flash_success _('Welcome to ForgedToFight.IO website')
          res.redirect '/'
        else
          # Ensure status could be later retried for activation
          user.queue_atomic { user.update(status: :pending) }
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
        if !User.create(filter.slice(:email, :nickname, :password))
          flash_danger _("Could't create your user, retry or report the issue")
        else
          # TODO(fenicks): send an activation e-mail
          # puts mote('mails/signup.text.mote', signup_url: "#{ENV['HOST']}/signup/#{signer.encode(User.unscoped.where(email: filter.email).first.id)}")
          flash_success _('Check your email box to activate your account')
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
