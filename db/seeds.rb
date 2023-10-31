# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.create!(name: genre_name)
#   end
group = Group.create! full_name: "Creative Unit 1", short_name: "CU1"

contract = Contract.create!(
  contract_type: 0,
  status: 0,
  job_title: "Developer",
  salary: 10_000_000,
  started_at: 1.year.ago,
  ended_at: nil
)

employee = Employee.create!(
  contract_id: contract.id,
  group_id: group.id,
  code: "VN1",
  remaining_paid_leaves: 12
)

entry_vn1 = Entry.create!(
  employee_id: employee.id,
  data: {
    "2023" => {
      "10" => {
        # Week 1
        "2" => {"started_at" => "08:00", "ended_at" => "17:30"},
        "3" => {"started_at" => "08:00", "ended_at" => "17:30"},
        "4" => {"started_at" => "08:00", "ended_at" => "17:30"},
        "5" => {"started_at" => "08:00", "ended_at" => "17:30"},
        "6" => {"started_at" => "08:00", "ended_at" => "17:30"},
        # Week 2
        "9" => {"started_at" => "08:00", "ended_at" => "17:30"},
        "10" => {"started_at" => "08:00", "ended_at" => "17:30"},
        "11" => {"started_at" => "08:00", "ended_at" => "17:30"},
        "12" => {"started_at" => "08:00", "ended_at" => "17:30"},
        "13" => {"started_at" => "08:00", "ended_at" => "17:30"},
        # Week 3
        "16" => {"started_at" => "08:00", "ended_at" => "17:30"},
        "17" => {"started_at" => "08:00", "ended_at" => "17:30"},
        "18" => {"started_at" => "08:00", "ended_at" => "17:30"},
        "19" => {"started_at" => "08:00", "ended_at" => "17:30"},
        "20" => {"started_at" => "08:00", "ended_at" => "17:30"},
        # Week 4
        "23" => {"started_at" => "08:00", "ended_at" => "17:30"},
        "24" => {"started_at" => "08:00", "ended_at" => "17:30"},
        "25" => {"started_at" => "08:00", "ended_at" => "17:30"},
        "26" => {"started_at" => "08:00", "ended_at" => "17:30"},
        "27" => {"started_at" => "08:00", "ended_at" => "17:30"},
        # Week 5
        "30" => {"started_at" => "08:00", "ended_at" => "17:30"},
        "31" => {"started_at" => "08:00", "ended_at" => "17:30"},
      }
    }
  }.to_json
)

timesheet_vn1 = Timesheet.create!(
  started_at: "1/10/2023",
  ended_at: "31/10/2023",
  total_entries: 22,
  bonus: 1_000,
  tax: 500,
  overtime: "{}",
  deduction: "{}",
  actual_salary: 10_000_000
)
