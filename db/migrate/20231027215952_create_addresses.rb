class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|
      t.string :street
      t.string :city
      t.string :state
      t.string :postal_code
      t.string :country
      t.string :number
      t.references :addressable, polymorphic: true, null: false

      t.timestamps
    end
  end
end
