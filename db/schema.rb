# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2023_10_31_220615) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "contracts", force: :cascade do |t|
    t.integer "contract_type"
    t.integer "status"
    t.string "job_title"
    t.float "salary"
    t.date "started_at"
    t.date "ended_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employees", force: :cascade do |t|
    t.bigint "contract_id"
    t.bigint "group_id"
    t.string "code"
    t.string "first_name"
    t.string "last_name"
    t.integer "gender"
    t.date "birthday"
    t.string "address"
    t.string "email"
    t.string "password"
    t.string "phone"
    t.float "remaining_paid_leaves"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "entries", force: :cascade do |t|
    t.bigint "employee_id"
    t.json "data"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "groups", force: :cascade do |t|
    t.string "full_name"
    t.string "short_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "timesheets", force: :cascade do |t|
    t.bigint "employee_id"
    t.bigint "contract_id"
    t.date "started_at"
    t.date "ended_at"
    t.float "total_entries"
    t.float "bonus"
    t.float "tax"
    t.json "overtime"
    t.json "deduction"
    t.float "actual_salary"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
