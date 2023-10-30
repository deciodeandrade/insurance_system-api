FactoryBot.define do
  factory :insurance_policy do
    policy_number { Faker::Number.unique.number(digits: 6) }
    premium_amount { Faker::Commerce.price(range: 50..500.0) }
    start_date { Faker::Date.between(from: 1.year.ago, to: Date.today) }
    end_date { Faker::Date.forward(days: 365) }
    status { %i(pending active expired canceled).sample }
    coverage_details { Faker::Lorem.paragraph }
    insurance_contract
  end
end
    