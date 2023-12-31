class Insurer < ApplicationRecord
  has_one :address, as: :addressable
  
  has_many :insurance_contracts

  validates :name, presence: true
  validates :phone_number, presence: true
  validates :email, presence: true, uniqueness: true
  validates :cnpj, presence: true, uniqueness: true, length: { maximum: 14 }
end
