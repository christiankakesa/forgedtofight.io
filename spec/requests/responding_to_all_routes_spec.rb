# frozen_string_literal: true

require_relative '../spec_helper'

describe '/', type: :request do
  it 'GET /' do
    get '/'
    expect(last_response).to be_ok
  end
end

describe '/accounts' do
  describe '/accounts/settings', type: :request do
    it 'Not GET /accounts/settings without a valid authenticated user' do
      get '/accounts/settings'
      expect(last_response).not_to be_ok
    end

    it 'GET /accounts/settings with a valid authenticated user' do
      get '/accounts/settings', {}, 'APP_MOCK_USER' => 'true'
      expect(300..399).to cover(last_response.status)
      follow_redirect!
      expect(last_response).to be_ok
      delete '/logout'
      expect(300..399).to cover(last_response.status)
      follow_redirect!
      expect(last_response).to be_ok
    end
  end
end

describe '/about', type: :request do
  it 'GET /about' do
    get '/about'
    expect(last_response).to be_ok
  end
end

describe '/botodex', type: :request do
  it 'GET /botodex' do
    get '/botodex'
    expect(last_response).to be_ok
  end
end

describe '/cookies or /use-of-cookies', type: :request do
  it 'GET /cookies' do
    get '/cookies'
    expect(last_response).to be_ok
  end

  it 'GET /use-of-cookies' do
    get '/use-of-cookies'
    expect(last_response).to be_ok
  end
end

describe '/donate', type: :request do
  it 'GET /donate' do
    get '/donate'
    expect(last_response).to be_ok
  end
end

describe '/events', type: :request do
  it 'GET /events' do
    get '/events'
    expect(last_response).to be_ok
  end
end

describe '/login', type: :request do
  it 'GET /login' do
    get '/login'
    expect(last_response).to be_ok
  end

  it 'POST /login' do
    User.unscoped.upsert!(email: 'fenicks79@example.com',
                          nickname: 'id',
                          password: 'toto',
                          status: :active)
    post '/login', identifier: 'id', password: 'toto'
    expect(300..399).to cover(last_response.status)
    follow_redirect!
    expect(last_response).to be_ok
    User.delete_all
  end
end

describe '/logout', type: :request do
  it 'GET /logout' do
    get '/logout'
    expect(300..399).to cover(last_response.status)
    follow_redirect!
    expect(last_response).to be_ok
  end

  it 'DELETE /logout' do
    delete '/logout'
    expect(300..399).to cover(last_response.status)
    follow_redirect!
    expect(last_response).to be_ok
  end
end

describe '/privacy', type: :request do
  it 'GET /privacy' do
    get '/privacy'
    expect(last_response).to be_ok
  end
end

describe '/signup', type: :request do
  it 'GET /signup' do
    get '/signup'
    expect(last_response).to be_ok
  end
end

describe '/support', type: :request do
  it 'GET /support' do
    get '/support'
    expect(last_response).to be_ok
  end
end

describe '/tos or /terms-of-service', type: :request do
  it 'GET /tos' do
    get '/tos'
    expect(last_response).to be_ok
  end

  it 'GET /terms-of-service' do
    get '/terms-of-service'
    expect(last_response).to be_ok
  end
end
