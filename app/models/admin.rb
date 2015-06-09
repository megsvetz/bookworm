class Admin < ActiveRecord::Base
  
  has_secure_password

  validates :username, length: {minimum: 8}, presence: true, uniqueness: true
  validates :password, presence: true
  validates :email, uniqueness: true, presence: true

end
