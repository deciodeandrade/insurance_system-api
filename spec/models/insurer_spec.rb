require 'rails_helper'

RSpec.describe Insurer, type: :model do  
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:phone_number) }
  it { should validate_presence_of(:email) }
  it { should validate_uniqueness_of(:email) }
  it { should validate_presence_of(:cnpj) }
  it { should validate_uniqueness_of(:cnpj) }
  it { should validate_length_of(:cnpj).is_at_most(14) }
end
