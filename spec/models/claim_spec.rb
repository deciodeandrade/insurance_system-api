require 'rails_helper'

RSpec.describe Claim, type: :model do
  it { should validate_presence_of(:date) }
  it { should validate_presence_of(:description) }
  it { should validate_presence_of(:location) }
  it { should validate_presence_of(:status) }
  it { should validate_presence_of(:insurance_policy) }

  it { should belong_to :insurance_policy }
end
