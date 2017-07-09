# frozen_string_literal: true

require_relative '../spec_helper'

describe 'UserMock helper' do
  after { Ftf::Helpers::UserMock.delete }

  it 'always get an instance of User' do
    expect(Ftf::Helpers::UserMock.build).to be_an_instance_of(User)
    expect(Ftf::Helpers::UserMock.get).to be_an_instance_of(User)
  end

  it 'return a non empty string value for `password`' do
    5.times { expect(Ftf::Helpers::UserMock.password).not_to be_empty }
  end

  it 'delete a mock user' do
    expect { Ftf::Helpers::UserMock.delete }.not_to raise_error
    expect(Ftf::Helpers::UserMock.delete).to be_nil
  end

  it 'test if the environement is mackable' do
    allow(ENV).to receive(:[]).with('APP_MOCK_USER').and_return('true')
    allow(ENV).to receive(:[]).with('RACK_ENV').and_return('test')
    expect(Ftf::Helpers::UserMock.mockable?).to be_truthy

    allow(ENV).to receive(:[]).with('APP_MOCK_USER').and_return('true')
    allow(ENV).to receive(:[]).with('RACK_ENV').and_return('development')
    expect(Ftf::Helpers::UserMock.mockable?).to be_truthy

    allow(ENV).to receive(:[]).with('APP_MOCK_USER').and_return('true')
    allow(ENV).to receive(:[]).with('RACK_ENV').and_return('production')
    expect(Ftf::Helpers::UserMock.mockable?).to be_falsey

    allow(ENV).to receive(:[]).with('APP_MOCK_USER').and_return('true')
    allow(ENV).to receive(:[]).with('RACK_ENV').and_return('staging')
    expect(Ftf::Helpers::UserMock.mockable?).to be_falsey

    allow(ENV).to receive(:[]).with('APP_MOCK_USER').and_return('false')
    allow(ENV).to receive(:[]).with('RACK_ENV').and_return('test')
    expect(Ftf::Helpers::UserMock.mockable?).to be_falsey

    allow(ENV).to receive(:[]).with('APP_MOCK_USER').and_return('false')
    allow(ENV).to receive(:[]).with('RACK_ENV').and_return('production')
    expect(Ftf::Helpers::UserMock.mockable?).to be_falsey
  end
end
