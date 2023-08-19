class User < ApplicationRecord
  has_one :report
  validates :first_name, length: { maximum: 100 }, presence: true
  validates :last_name, length: { maximum: 100 }, presence: true
  validates :email, length: { maximum: 100 }, presence: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP } 
end
