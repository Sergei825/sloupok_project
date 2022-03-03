# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_03_03_123923) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "test_results", force: :cascade do |t|
    t.integer "result"
    t.bigint "user_id"
    t.bigint "test_id"
    t.index ["test_id"], name: "index_test_results_on_test_id"
    t.index ["user_id"], name: "index_test_results_on_user_id"
  end

  create_table "tests", force: :cascade do |t|
    t.text "question1"
    t.text "answers1"
    t.text "right_answer1"
    t.text "question2"
    t.text "answers2"
    t.text "right_answer2"
    t.text "question3"
    t.text "answers3"
    t.text "right_answer3"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_tests_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.text "email"
    t.text "password"
  end

  add_foreign_key "test_results", "tests"
  add_foreign_key "test_results", "users"
  add_foreign_key "tests", "users"
end
