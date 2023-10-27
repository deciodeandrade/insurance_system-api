FactoryBot.define do
  factory :insurer do
    name { Faker::Company::name }
    phone_number { Faker::PhoneNumber::phone_number }
    email { Faker::Internet.email }
    cnpj { Faker::CNPJ.numeric }
  end
end
