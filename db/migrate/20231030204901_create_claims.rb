class CreateClaims < ActiveRecord::Migration[6.0]
  def change
    create_table :claims do |t|
      t.date :date
      t.text :description
      t.string :location
      t.string :status
      t.references :insurance_policy, null: false, foreign_key: true

      t.timestamps
    end
  end
end
