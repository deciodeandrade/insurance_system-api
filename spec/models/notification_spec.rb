require 'rails_helper'

RSpec.describe Notification, type: :model do
  it { should validate_presence_of(:message) }
  it { should validate_inclusion_of(:read).in_array([true, false]) }
  it { should validate_presence_of(:user) }

  it { should belong_to :user }
end
