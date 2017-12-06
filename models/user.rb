# frozen_string_literal: true

class User
  include NoBrainer::Document
  include NoBrainer::Document::Timestamps
  include Shield::Model

  default_scope(:active) { where(status: :active) }
  scope(:pending) { where(status: :pending) }
  scope(:deleted) { where(status: :deleted) }

  field :nickname, type: String, required: true, unique: true
  field :email, type: String, required: true, unique: true
  field :crypted_password, type: String, required: true
  field :status,
        type: Enum,
        default: :pending,
        in: %i[active pending deleted]

  def state_active
    update!(status: :active)
  end

  def state_pending
    update!(status: :pending)
  end

  def state_deleted
    update!(status: :deleted)
  end

  def self.[](id)
    where(id: id).first
  end

  def self.fetch(identifier)
    where(nickname: identifier).first || where(email: identifier).first
  end
end
