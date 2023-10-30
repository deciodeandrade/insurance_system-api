require 'rails_helper'

RSpec.describe Document, type: :model do
  subject { build(:document) }

  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:file) }

  it { should belong_to :documentable }
end
