FactoryBot.define do
  factory :claim do
    date { "2023-10-30" }
    description { "MyText" }
    location { "MyString" }
    status { "MyString" }
    insurance_policy
  end
end
