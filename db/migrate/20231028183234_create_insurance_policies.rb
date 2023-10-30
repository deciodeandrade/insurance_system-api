class CreateInsurancePolicies < ActiveRecord::Migration[6.0]
  def change
    create_table :insurance_policies do |t|
      t.string :policy_number
      t.decimal :premium_amount
      t.date :start_date
      t.date :end_date
      t.string :status
      t.text :coverage_details
      t.references :insurance_contract, null: false, foreign_key: true

      t.timestamps
    end
  end
end
