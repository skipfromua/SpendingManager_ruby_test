class User < ApplicationRecord
  validates :username, :presence => true, :length => { :maximum => 20 }, :uniqueness => { :case_sensitive => false}
  validates :password, presence: true, length: { minimum: 6 }
  has_secure_password
end
