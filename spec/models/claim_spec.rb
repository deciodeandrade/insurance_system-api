require 'rails_helper'

RSpec.describe Claim, type: :model do
  it { should validate_presence_of(:date) }
  it { should validate_presence_of(:description) }
  it { should validate_presence_of(:location) }
  it { should validate_presence_of(:status) }
  it { should validate_presence_of(:insurance_policy) }

  it { should belong_to :insurance_policy }

  it do
    should define_enum_for(:status)
      .backed_by_column_of_type(:string)
      .with_values(
        reported: 'reported',
        in_progress: 'in_progress',
        settled: 'settled',
        denied: 'denied'
      )
  end
end
