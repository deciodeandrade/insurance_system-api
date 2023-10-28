class CreateInsuranceContracts < ActiveRecord::Migration[6.0]
  def change
    create_table :insurance_contracts do |t|
      t.string :contract_number
      t.text :coverage
      t.references :policy_holder, null: false, foreign_key: true
      t.references :insurer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
