FactoryBot.define do
  factory :notification do
    message { Faker::Lorem.paragraph }
    read { [true, false].sample }
    user
  end
end
