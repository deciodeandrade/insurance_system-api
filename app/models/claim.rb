class Claim < ApplicationRecord
  belongs_to :insurance_policy

  validates :insurance_policy, presence: true
  validates :date, presence: true
  validates :description, presence: true
  validates :location, presence: true
  validates :status, presence: true
end
