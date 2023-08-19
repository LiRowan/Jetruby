class Report < ApplicationRecord
  belongs_to :user
  validates :title, length: { maximum: 250 }, presence: true
  validates :description, length: { maximum: 500 }, presence: true

end
