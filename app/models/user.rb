class User < ActiveRecord::Base
  has_secure_password
  validates :email, presence: true, uniqueness: true, :password, length: { minimum: 4 }

end
