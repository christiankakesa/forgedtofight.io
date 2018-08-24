# frozen_string_literal: true

require 'scrivener'

class PasswordValidation < Scrivener
  attr_accessor :password
  attr_accessor :password_confirmation

  def validate
    assert_present :password
    assert_password_match(:password, :password_confirmation)
    # limit length of fields from 3 to 128 max length
    %i[password password_confirmation].each do |field|
      assert_length field, 3..128
    end
  end

  protected

  def assert_password_match(att, att_confirm, error = [att, :not_password_match])
    assert send(att).eql?(send(att_confirm)), error
  end
end
