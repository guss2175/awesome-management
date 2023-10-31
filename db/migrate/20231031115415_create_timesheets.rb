class CreateTimesheets < ActiveRecord::Migration[7.1]
  def change
    create_table :timesheets do |t|
      t.bigint :employee_id
      t.bigint :contract_id
      t.date :started_at
      t.date :ended_at
      t.float :total_entries
      t.float :bonus
      t.float :tax
      t.json :overtime
      t.json :deduction
      t.float :actual_salary

      t.timestamps
    end
  end
end
