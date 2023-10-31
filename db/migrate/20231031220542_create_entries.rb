class CreateEntries < ActiveRecord::Migration[7.1]
  def change
    create_table :entries do |t|
      t.bigint :employee_id
      t.json :data

      t.timestamps
    end
  end
end
