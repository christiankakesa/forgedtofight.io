# frozen_string_literal: true

require_relative '../spec_helper'

describe 'Model User' do
  it 'Get user with `[]` operator containing User#id value' do
    user = User.unscoped.upsert(email: 'user@forgedtofight.io', password: 'toto', status: :active)
    expect(user.id).to eq(User[user.id].id)
    user.delete
  end
end
