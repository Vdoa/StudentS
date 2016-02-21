# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160221205816) do

  create_table "professors", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "students", force: :cascade do |t|
    t.string   "name"
    t.integer  "Year"
    t.string   "town"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "subject_students", force: :cascade do |t|
    t.integer  "subject_id"
    t.integer  "student_id"
    t.datetime "exam_date"
    t.integer  "mark"
    t.boolean  "passed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "subject_students", ["student_id"], name: "index_subject_students_on_student_id"
  add_index "subject_students", ["subject_id"], name: "index_subject_students_on_subject_id"

  create_table "subjects", force: :cascade do |t|
    t.string   "name",         null: false
    t.text     "description"
    t.integer  "year"
    t.integer  "professor_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

end
