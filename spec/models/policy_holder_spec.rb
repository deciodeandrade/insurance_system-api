require 'rails_helper'

RSpec.describe PolicyHolder, type: :model do
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:type) }
  it { should validate_presence_of(:cpf_cnpj) }
  it { should validate_uniqueness_of(:cpf_cnpj) }
  it { should validate_length_of(:cpf_cnpj).is_at_most(14) }
  it { should validate_presence_of(:phone_number) }
  it { should validate_presence_of(:email) }
  it { should validate_uniqueness_of(:email) }

  it { should have_one :address }
  it { should have_many :insurance_contracts }
end
