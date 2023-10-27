class Insurer < ApplicationRecord
  validates :name, presence: true
  validates :phone_number, presence: true
  validates :email, presence: true, uniqueness: true
  validates :cnpj, presence: true, uniqueness: true, length: { maximum: 14 }
end
