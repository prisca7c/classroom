class User < ApplicationRecord
  belongs_to :role, polymorphic: true

  has_secure_password

  def role_is?(role_class)
    role.is_a?(role_class)
  end
end
