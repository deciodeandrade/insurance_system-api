FactoryBot.define do
  factory :claim do
    date { Faker::Date.between(from: 1.year.ago, to: Date.today) }
    description { Faker::Lorem.paragraph }
    location { Faker::Address.city }
    status { %i(reported in_progress settled denied).sample }
    insurance_policy
  end
end
