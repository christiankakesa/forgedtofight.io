# frozen_string_literal: true

require 'scrivener'

class SignupValidation < Scrivener
  attr_accessor :email
  attr_accessor :nickname
  attr_accessor :password
  attr_accessor :password_confirmation

  def validate
    assert_present :email
    assert_email :email
    assert_unique :email
    assert_present :nickname
    assert_unique :nickname
    assert_present :password
    assert_password_match(:password, :password_confirmation)
    # limit length of fields from 3 to 128 max length
    %i[email nickname password password_confirmation].each do |field|
      assert_length field, 3..128
    end
  end

  protected

  def assert_unique(att, error = [att, :not_unique])
    assert User.unscoped.where(att => send(att)).count.zero?, error
  end

  def assert_password_match(att, att_confirm, error = [att, :not_password_match])
    assert send(att).eql?(send(att_confirm)), error
  end
end
