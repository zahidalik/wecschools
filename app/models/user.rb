class User < ApplicationRecord
  validates_presence_of :username, :full_name, :contact
  validates_uniqueness_of :username

  has_secure_password
  
  has_many :roles, as: :rolable
end
