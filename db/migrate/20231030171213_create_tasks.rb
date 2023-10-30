class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :description
      t.date :due_date
      t.string :status
      t.references :taskable, polymorphic: true, null: false
      t.references :assigned_to_user, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
