FactoryBot.define do
  factory :document do
    name { "document_example" }
    file { Rack::Test::UploadedFile.new(Rails.root.join("spec/support/files/document_example.pdf")) }

    after :build do |document|
      document.documentable = create(%i(insurance_policy insurance_contract).sample)
    end
  end
end
