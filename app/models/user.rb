# frozen_string_literal: true

class User < ApplicationRecord
  belongs_to :role, polymorphic: true
  validates :name, presence: true
  validates :email, presence: true
  validates :email, uniqueness: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :password, presence: true
  validates :password, length: { in: 6..20 }

  has_secure_password

  def role_is?(role_class)
    role.is_a?(role_class)
  end
end
