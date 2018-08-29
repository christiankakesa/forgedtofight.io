# frozen_string_literal: true

class User
  include NoBrainer::Document
  include NoBrainer::Document::Timestamps
  include Shield::Model

  default_scope(:active) { where(status: :active) }
  scope(:pending) { where(status: :pending) }

  field :nickname, type: String, required: true, unique: true
  field :email, type: String, required: true, unique: true
  field :crypted_password, type: String, required: true
  field :status,
        type: Enum,
        default: :pending,
        in: %i[active pending]

  def self.[](id)
    find?(id)
  end

  def self.fetch(identifier)
    where(nickname: identifier).first || where(email: identifier).first
  end
end
