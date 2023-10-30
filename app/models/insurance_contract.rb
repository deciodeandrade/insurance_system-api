class InsuranceContract < ApplicationRecord
  belongs_to :policy_holder
  belongs_to :insurer
  
  has_one :document, as: :documentable 

  validates :contract_number, presence: true
  validates :coverage, presence: true
  validates :policy_holder, presence: true
  validates :insurer, presence: true
end
