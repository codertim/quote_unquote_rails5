class User < ApplicationRecord
  before_save { self.email = email.downcase }
  VALID_EMAIL_PATTERN = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :email, presence: true, length: { maximum: 255 },
                    uniqueness: { case_sensitive: false },
                    format: { with: VALID_EMAIL_PATTERN }
  validates :name, presence: true, length: { maximum: 50}
  validates :password, presence: true, length: { minimum: 10 }
  has_secure_password
end
