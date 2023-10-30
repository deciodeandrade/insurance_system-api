class InsurancePolicy < ApplicationRecord
  belongs_to :insurance_contract

  validates :policy_number, presence: true
  validates :premium_amount, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :status, presence: true
  validates :coverage_details, presence: true
end
