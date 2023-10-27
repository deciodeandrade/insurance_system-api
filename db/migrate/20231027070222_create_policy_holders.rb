class CreatePolicyHolders < ActiveRecord::Migration[6.0]
  def change
    create_table :policy_holders do |t|
      t.string :name
      t.string :type
      t.string :cpf_cnpj
      t.string :phone_number
      t.string :email

      t.timestamps
    end
  end
end
