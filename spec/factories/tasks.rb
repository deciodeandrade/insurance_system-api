FactoryBot.define do
  factory :task do
    description { Faker::Lorem.paragraph }
    due_date { Faker::Date.forward(days: 30) }
    status { %i(pending in_progress completed delayed canceled).sample }
    association :assigned_to_user, factory: :user

    after :build do |task|
      task.taskable = create(%i(insurance_policy insurance_contract policy_holder insurer notification).sample)
    end
  end
end
