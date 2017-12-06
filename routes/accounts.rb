# frozen_string_literal: true

Accounts = Syro.new(BasicDeck) do
  on 'accounts' do
    on !authenticated(User) do
      res.status = 401
      res.write _('You are not authorized to be here !')
      halt(res.finish)
    end

    on 'settings' do
      # (get || post || put || patch || delete)
      get { render 'views/accounts/settings.mote' }
    end

    default do
      res.redirect '/accounts/settings'
    end
  end
end
