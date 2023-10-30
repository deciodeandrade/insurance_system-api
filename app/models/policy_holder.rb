class PolicyHolder < ApplicationRecord
  self.inheritance_column = :_type_disabled

  has_one :address, as: :addressable
  
  has_many :insurance_contracts

  validates :name, presence: true
  validates :type, presence: true
  validates :phone_number, presence: true
  validates :email, presence: true, uniqueness: true
  validates :cpf_cnpj, presence: true, uniqueness: true, length: { maximum: 14 }

  enum type: {
    individual: 'individual',
    legal_entity: 'legal_entity'
  }
end
