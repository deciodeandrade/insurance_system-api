FactoryBot.define do
  factory :policy_holder do
    name { Faker::Company::name }
    type { %i(individual legal_entity).sample }
    cpf_cnpj { Faker::CNPJ.numeric }
    phone_number { Faker::PhoneNumber::phone_number }
    email { Faker::Internet.email }
  end
end
