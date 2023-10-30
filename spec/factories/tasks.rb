FactoryBot.define do
  factory :task do
    description { "MyText" }
    due_date { "2023-10-30" }
    status { "MyString" }
    association :assigned_to_user, factory: :user

    after :build do |task|
      task.taskable = create(%i(insurance_policy insurance_contract policy_holder insurer notification).sample)
    end
  end
end
