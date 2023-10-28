FactoryBot.define do
  factory :address do
    street { Faker::Address.street_name }
    city { Faker::Address.city }
    state { Faker::Address.state }
    postal_code { Faker::Address.zip_code }
    country { Faker::Address.country }
    number { Faker::Address.building_number }

    after :build do |address|
      address.addressable = create(%i(insurer policy_holder).sample)
    end
  end
end
