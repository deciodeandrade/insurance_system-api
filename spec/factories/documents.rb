FactoryBot.define do
  factory :document do
    name { "MyString" }

    after :build do |document|
      document.documentable = create(%i(insurance_policy insurance_contract).sample)
    end
  end
end
