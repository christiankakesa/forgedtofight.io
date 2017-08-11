# frozen_string_literal: true

Home = Syro.new(BasicDeck) do
  on 'about' do
    get do
      render 'views/about.mote'
    end
  end

  on 'events' do
    get do
      render 'views/events.mote'
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
        if login(User, user_mock.get.username, user_mock.password)
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
        flash_danger _('Something is going wrong with your credentials.')
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

  on 'privacy' do
    get do
      render 'views/privacy.mote'
    end
  end

  on 'reset-password' do
    get do
      render 'views/reset_password.mote'
    end

    post do
      identifier = req[:identifier].to_s
      user = (User.where(email: identifier) ||
                User.where(username: identifier)).first

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
      user = User.find(signup_token: inbox[:activate])
      on !user.nil? do
        user.queue_atomic do
          user.update status: :active
          user.unset :signup_token
        end
        if user.save
          # TODO(fenicks): send a welcome email
          authenticate(user)
          flash_success _('Welcome to TRANSFORMERS Forged to Fight dex')
          res.redirect '/'
        else
          flash_danger _('We could not activate your account.')
          flash_danger _('please retry or contact the administrator')
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
      # TODO(fenicks): validate the form => password, e-mail
      if validates(SignupValidation.validates(req.params))
        req.params.clear
        # TODO(fenicks): send an activation e-mail
        flash_success _('Check your email box to activate your account')
      else
        flash_danger _('Please check the required parameters')
      end
      render 'views/signup.mote'
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
      upcoming_bot: UpcomingBot.order_by(start_date: :desc).first,
      calendar_bot: CalendarBot.where(:start_date.gt => DateTime.new(Time.now.utc.year, Time.now.utc.month, 1, 0, 0, 0, 'UTC').to_time).where(:start_date.lt => DateTime.new(Time.now.utc.year, Time.now.utc.month, -1, 23, 59, 59, 'UTC').to_time).first
    }
    render 'views/home.mote', data: @data
  end
end
