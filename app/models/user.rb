class User < ApplicationRecord
  before_save :downcase_email

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i

  validates :email, presence: true,
    length: {maximum: Settings.user.LENGTH_EMAIL_MAX},
    format: {with: VALID_EMAIL_REGEX},
    uniqueness: {case_sensitive: false}
  validates :name, presence: true,
    length: {maximum: Settings.user.LENGTH_NAME_MAX}
  validates :password, presence: true,
    length: {minimum: Settings.user.LENGTH_PASSWORD_MIN}

  has_secure_password

  private

  def downcase_email
    email.downcase!
  end
end
