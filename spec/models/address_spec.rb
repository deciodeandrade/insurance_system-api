require 'rails_helper'

RSpec.describe Address, type: :model do
  subject { build(:address) }

  it { should validate_presence_of(:street) }
  it { should validate_presence_of(:city) }
  it { should validate_presence_of(:state) }
  it { should validate_presence_of(:postal_code) }
  it { should validate_presence_of(:country) }
  it { should validate_presence_of(:number) }

  it { should belong_to :addressable }
end
