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

ActiveRecord::Schema.define(version: 20151201131622) do

  create_table "book_cases", force: :cascade do |t|
    t.integer  "evaluation", default: 0, null: false
    t.integer  "level",      default: 0, null: false
    t.integer  "user_id"
    t.integer  "book_id"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "book_cases", ["book_id"], name: "index_book_cases_on_book_id"
  add_index "book_cases", ["user_id"], name: "index_book_cases_on_user_id"

  create_table "books", force: :cascade do |t|
    t.string   "isbn",         limit: 13,  default: "0", null: false
    t.string   "title",        limit: 255, default: "",  null: false
    t.text     "description"
    t.string   "pc_image_url", limit: 512
    t.string   "mb_image_url", limit: 512
    t.integer  "category_id"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  add_index "books", ["category_id"], name: "index_books_on_category_id"

  create_table "categories", force: :cascade do |t|
    t.string   "name",       limit: 45, default: "", null: false
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

  create_table "jobs", force: :cascade do |t|
    t.string   "name",       limit: 255, default: "", null: false
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  create_table "notes", force: :cascade do |t|
    t.text     "note",         default: "", null: false
    t.integer  "book_case_id"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "notes", ["book_case_id"], name: "index_notes_on_book_case_id"

  create_table "skills", force: :cascade do |t|
    t.string   "name",       limit: 45, default: "", null: false
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

  create_table "tag_has_books", force: :cascade do |t|
    t.integer  "book_id"
    t.integer  "tag_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "tag_has_books", ["book_id"], name: "index_tag_has_books_on_book_id"
  add_index "tag_has_books", ["tag_id"], name: "index_tag_has_books_on_tag_id"

  create_table "tags", force: :cascade do |t|
    t.string   "name",       limit: 45, default: "", null: false
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

  create_table "user_has_skills", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "skill_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "user_has_skills", ["skill_id"], name: "index_user_has_skills_on_skill_id"
  add_index "user_has_skills", ["user_id"], name: "index_user_has_skills_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.string   "name",                   default: "",    null: false
    t.integer  "experience",             default: 0,     null: false
    t.text     "profile"
    t.integer  "job_id"
    t.boolean  "admin",                  default: false, null: false
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["job_id"], name: "index_users_on_job_id"
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
