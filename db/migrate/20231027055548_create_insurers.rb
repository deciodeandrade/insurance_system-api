class CreateInsurers < ActiveRecord::Migration[6.0]
  def change
    create_table :insurers do |t|
      t.string :name
      t.string :phone_number
      t.string :email
      t.string :cnpj
      t.timestamps
    end

    add_index :insurers, :cnpj
  end
end
