# frozen_string_literal: true

require 'scrivener'

class UserDeleteValidation < Scrivener
  attr_accessor :identifier

  def validate
    assert_present :identifier
  end
end
