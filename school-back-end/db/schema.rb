# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_06_05_201849) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "classe_courses", force: :cascade do |t|
    t.bigint "classe_id", null: false
    t.bigint "course_id"
    t.string "classe_name"
    t.string "course_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["classe_id"], name: "index_classe_courses_on_classe_id"
    t.index ["course_id"], name: "index_classe_courses_on_course_id"
  end

  create_table "classes", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "courses", force: :cascade do |t|
    t.bigint "professor_id", null: false
    t.string "title"
    t.string "level"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["professor_id"], name: "index_courses_on_professor_id"
  end

  create_table "grades", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "parent_students", force: :cascade do |t|
    t.bigint "parent_id", null: false
    t.bigint "student_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["parent_id"], name: "index_parent_students_on_parent_id"
    t.index ["student_id"], name: "index_parent_students_on_student_id"
  end

  create_table "parents", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "address"
    t.string "email"
    t.bigint "phone"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "professor_classes", force: :cascade do |t|
    t.bigint "professor_id", null: false
    t.bigint "classe_id", null: false
    t.string "professor_name"
    t.string "class_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["classe_id"], name: "index_professor_classes_on_classe_id"
    t.index ["professor_id"], name: "index_professor_classes_on_professor_id"
  end

  create_table "professor_students", force: :cascade do |t|
    t.bigint "professor_id", null: false
    t.bigint "student_id", null: false
    t.string "professor_name"
    t.string "student_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["professor_id"], name: "index_professor_students_on_professor_id"
    t.index ["student_id"], name: "index_professor_students_on_student_id"
  end

  create_table "professors", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "speciality"
    t.string "email"
    t.bigint "phone"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "student_courses", force: :cascade do |t|
    t.bigint "student_id", null: false
    t.bigint "course_id"
    t.string "student_name"
    t.string "course_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["course_id"], name: "index_student_courses_on_course_id"
    t.index ["student_id"], name: "index_student_courses_on_student_id"
  end

  create_table "students", force: :cascade do |t|
    t.bigint "classe_id", null: false
    t.string "username"
    t.string "password_digest"
    t.string "firstname"
    t.string "lastname"
    t.string "email"
    t.bigint "phone"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["classe_id"], name: "index_students_on_classe_id"
  end

  add_foreign_key "classe_courses", "classes", column: "classe_id"
  add_foreign_key "courses", "professors"
  add_foreign_key "parent_students", "parents"
  add_foreign_key "parent_students", "students"
  add_foreign_key "professor_classes", "classes", column: "classe_id"
  add_foreign_key "professor_classes", "professors"
  add_foreign_key "professor_students", "professors"
  add_foreign_key "professor_students", "students"
  add_foreign_key "student_courses", "students"
  add_foreign_key "students", "classes", column: "classe_id"
end
