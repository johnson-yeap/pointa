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

ActiveRecord::Schema.define(version: 20150521105353) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "academic_year_semesters", force: true do |t|
    t.integer  "academic_year_id"
    t.integer  "semester_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "academic_year_semesters", ["academic_year_id"], name: "index_academic_year_semesters_on_academic_year_id", using: :btree
  add_index "academic_year_semesters", ["semester_id"], name: "index_academic_year_semesters_on_semester_id", using: :btree

  create_table "academic_years", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "appointments", force: true do |t|
    t.integer  "lecturer_id"
    t.integer  "course_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "appointments", ["course_id"], name: "index_appointments_on_course_id", using: :btree
  add_index "appointments", ["lecturer_id"], name: "index_appointments_on_lecturer_id", using: :btree

  create_table "bachelors", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "course_components", force: true do |t|
    t.string   "code"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "courses", force: true do |t|
    t.string   "name"
    t.integer  "ch"
    t.integer  "department_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "code"
    t.integer  "course_component_id"
    t.text     "description"
  end

  add_index "courses", ["course_component_id"], name: "index_courses_on_course_component_id", using: :btree
  add_index "courses", ["department_id"], name: "index_courses_on_department_id", using: :btree

  create_table "departments", force: true do |t|
    t.string   "name"
    t.integer  "min_ch"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "bachelor_id"
  end

  add_index "departments", ["bachelor_id"], name: "index_departments_on_bachelor_id", using: :btree

  create_table "enrollments", force: true do |t|
    t.integer  "student_id"
    t.integer  "course_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "grade_id"
    t.boolean  "completed",                 default: false
    t.integer  "academic_year_semester_id"
  end

  add_index "enrollments", ["academic_year_semester_id"], name: "index_enrollments_on_academic_year_semester_id", using: :btree
  add_index "enrollments", ["course_id"], name: "index_enrollments_on_course_id", using: :btree
  add_index "enrollments", ["grade_id"], name: "index_enrollments_on_grade_id", using: :btree
  add_index "enrollments", ["student_id"], name: "index_enrollments_on_student_id", using: :btree

  create_table "exclusions", force: true do |t|
    t.integer  "course_id"
    t.integer  "academic_year_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "exclusions", ["academic_year_id"], name: "index_exclusions_on_academic_year_id", using: :btree
  add_index "exclusions", ["course_id"], name: "index_exclusions_on_course_id", using: :btree

  create_table "grades", force: true do |t|
    t.string   "name"
    t.decimal  "points",     precision: 3, scale: 2
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lecturers", force: true do |t|
    t.string   "name"
    t.string   "position"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "semesters", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "spis", force: true do |t|
    t.integer  "department_id"
    t.integer  "course_component_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "required_ch"
  end

  add_index "spis", ["course_component_id"], name: "index_spis_on_course_component_id", using: :btree
  add_index "spis", ["department_id"], name: "index_spis_on_department_id", using: :btree

  create_table "students", force: true do |t|
    t.string   "name"
    t.string   "matric_no"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "department_id"
    t.decimal  "cgpa",             precision: 3, scale: 2
    t.integer  "academic_year_id"
  end

  add_index "students", ["academic_year_id"], name: "index_students_on_academic_year_id", using: :btree
  add_index "students", ["department_id"], name: "index_students_on_department_id", using: :btree

  create_table "users", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "username"
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.integer  "student_id"
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["student_id"], name: "index_users_on_student_id", using: :btree

end
