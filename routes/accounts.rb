# frozen_string_literal: true

Accounts = Syro.new(BasicDeck) do
  on 'accounts' do
    on !authenticated(User) do
      res.status = 401
      res.write _('You are not authorized to be here !')
      halt(res.finish)
    end

    on 'settings' do
      # (get || post || put || patch)
      get { render 'views/accounts/settings.mote' }
    end

    on 'delete' do
      get { render 'views/accounts/delete.mote' }

      on req.post? || req.delete? do
        filter = UserDeleteValidation.new(req.params)
        user = User.fetch(req[:identifier].to_s)
        if filter.valid? && user&.destroy
          flash_success _('Your account is removed')
          res.redirect '/logout'
        else
          flash_danger _('Wrong nickname or email')
          render 'views/accounts/delete.mote', params: filter.slice(:identifier) || {}
        end
      end
    end

    default do
      res.redirect '/accounts/settings'
    end
  end
end
