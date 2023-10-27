class PolicyHolder < ApplicationRecord
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
