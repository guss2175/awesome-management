class CreateContracts < ActiveRecord::Migration[7.1]
  def change
    create_table :contracts do |t|
      t.integer :contract_type
      t.integer :status
      t.string :job_title
      t.float :salary
      t.date :started_at
      t.date :ended_at

      t.timestamps
    end
  end
end
