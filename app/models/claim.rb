class Claim < ApplicationRecord
  belongs_to :insurance_policy

  validates :insurance_policy, presence: true
  validates :date, presence: true
  validates :description, presence: true
  validates :location, presence: true
  validates :status, presence: true

  enum status: {
    reported: 'reported',
    in_progress: 'in_progress',
    settled: 'settled',
    denied: 'denied'       
  }
end
