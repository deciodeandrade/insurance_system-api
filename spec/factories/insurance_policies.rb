FactoryBot.define do
  factory :insurance_policy do
    policy_number { rand(1..1000000).to_s }
    premium_amount { "9.99" }
    start_date { "2023-10-28" }
    end_date { "2023-10-28" }
    status { "MyString" }
    coverage_details { "MyText" }
    insurance_contract
  end
end
