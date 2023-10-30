require 'rails_helper'

RSpec.describe InsurancePolicy, type: :model do
  it { should validate_presence_of(:policy_number) }
  it { should validate_presence_of(:premium_amount) }
  it { should validate_presence_of(:start_date) }
  it { should validate_presence_of(:end_date) }
  it { should validate_presence_of(:status) }
  it { should validate_presence_of(:coverage_details) }

  it { should belong_to :insurance_contract }

  it { should have_one :document }
end
