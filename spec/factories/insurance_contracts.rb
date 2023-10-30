FactoryBot.define do
  factory :insurance_contract do
    contract_number { rand(1..1000000).to_s }
    coverage { Faker::Lorem.paragraph }
    policy_holder
    insurer
  end
end
