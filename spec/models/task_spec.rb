require 'rails_helper'

RSpec.describe Task, type: :model do
  subject { build(:task) }

  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:description) }
  it { should validate_presence_of(:due_date) }
  it { should validate_presence_of(:status) }
  it { should validate_presence_of(:taskable) }
  it { should validate_presence_of(:assigned_to_user) }

  it { should belong_to(:taskable) }
  it { should belong_to(:assigned_to_user).class_name('User') }
end
