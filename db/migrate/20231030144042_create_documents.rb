class CreateDocuments < ActiveRecord::Migration[6.0]
  def change
    create_table :documents do |t|
      t.string :name
      t.references :documentable, polymorphic: true, null: false

      t.timestamps
    end
  end
end
