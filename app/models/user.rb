class User < ApplicationRecord
  belongs_to :role, polymorphic: true
  validates :name, presence: true
  validates :email, presence: true
  validates :email, uniqueness: true
  validates :password, presence: true
  has_secure_password

  def role_is?(role_class)
    role.is_a?(role_class)
  end
end
