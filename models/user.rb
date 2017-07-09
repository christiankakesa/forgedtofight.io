# frozen_string_literal: true

class User
  include NoBrainer::Document
  include NoBrainer::Document::Timestamps
  include Shield::Model

  default_scope(:active) { where(status: :active) }
  scope(:pending) { where(status: :pending) }
  scope(:deleted) { where(status: :deleted) }

  field :username, type: String, uniq: true
  field :email, type: String, required: true, uniq: true
  field :crypted_password, type: String
  field :company, type: String
  field :twitter, type: String
  field :linkedin, type: String
  field :github, type: String
  field :status,
        type: Enum,
        default: :pending,
        in: %i[active pending deleted]

  def self.[](id)
    where(id: id).first
  end

  def self.fetch(identifier)
    where(username: identifier).first || where(email: identifier).first
  end
end
