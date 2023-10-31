class CreateEmployees < ActiveRecord::Migration[7.1]
  def change
    create_table :employees do |t|
      t.bigint :contract_id
      t.bigint :group_id
      t.string :code
      t.string :first_name
      t.string :last_name
      t.integer :gender
      t.date :birthday
      t.string :address
      t.string :email
      t.string :password
      t.string :phone
      t.float :remaining_paid_leaves

      t.timestamps
    end
  end
end
