require 'rails_helper'

RSpec.describe InsuranceContract, type: :model do
  it { should validate_presence_of(:contract_number) }
  it { should validate_presence_of(:coverage) }
  it { should validate_presence_of(:policy_holder) }
  it { should validate_presence_of(:insurer) }

  it { should belong_to :policy_holder }
  it { should belong_to :insurer }

  it { should have_one :document }
end
