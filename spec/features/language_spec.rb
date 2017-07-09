# frozen_string_literal: true

require_relative '../spec_helper'

describe 'Language must be set', type: :feature do
  it 'retrieve default language' do
    get '/'
    expect(last_request.env['rack.session']['lang']).not_to be_nil
  end

  it 'EN language' do
    get '/', {}, 'HTTP_ACCEPT_LANGUAGE' => 'en_US'
    expect('en').to eq(last_request.env['rack.session']['lang'])
  end

  it 'FR language' do
    get '/', {}, 'HTTP_ACCEPT_LANGUAGE' => 'fr_FR'
    expect('fr').to eq(last_request.env['rack.session']['lang'])
  end
end
