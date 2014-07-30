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

ActiveRecord::Schema.define(version: 20140730004810) do

  create_table "category_events", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "chruches", force: true do |t|
    t.string   "name"
    t.string   "phone"
    t.string   "address"
    t.string   "neighborhood"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.string   "zip_code"
    t.integer  "member_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "chruches", ["member_id"], name: "index_chruches_on_member_id", using: :btree

  create_table "departaments", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "member_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "departaments", ["member_id"], name: "index_departaments_on_member_id", using: :btree

  create_table "everyday_events", force: true do |t|
    t.string   "name"
    t.time     "schedule"
    t.integer  "day"
    t.string   "repetition"
    t.integer  "category_event_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "everyday_events", ["category_event_id"], name: "index_everyday_events_on_category_event_id", using: :btree

  create_table "member_contacts", force: true do |t|
    t.integer  "member_id"
    t.string   "contact_name"
    t.string   "contact_number"
    t.string   "degree_kinship"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "member_contacts", ["member_id"], name: "index_member_contacts_on_member_id", using: :btree

  create_table "members", force: true do |t|
    t.string   "name"
    t.date     "birth_date"
    t.integer  "sex"
    t.string   "address"
    t.string   "neighborhood"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.string   "zip_code"
    t.string   "home_phone"
    t.string   "mobile_phone"
    t.string   "work_phone"
    t.string   "email"
    t.string   "blood_type"
    t.integer  "marital_status"
    t.integer  "congregating"
    t.string   "photo"
    t.date     "withdrawl_date"
    t.integer  "departament_id"
    t.string   "skills"
    t.date     "worship_date"
    t.integer  "situation"
    t.string   "profession"
    t.string   "education"
    t.date     "baptism_date"
    t.date     "wedding_date"
    t.integer  "ministerial_role_id"
    t.string   "facebook"
    t.string   "twitter"
    t.string   "instagram"
    t.string   "whatsapp"
    t.integer  "church_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "members", ["church_id"], name: "index_members_on_church_id", using: :btree
  add_index "members", ["departament_id"], name: "index_members_on_departament_id", using: :btree
  add_index "members", ["ministerial_role_id"], name: "index_members_on_ministerial_role_id", using: :btree

  create_table "messages", force: true do |t|
    t.date     "date"
    t.time     "schedule"
    t.text     "message_text"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ministerial_roles", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "prayer_requests", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "phone"
    t.text     "request"
    t.integer  "member_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "prayer_requests", ["member_id"], name: "index_prayer_requests_on_member_id", using: :btree

  create_table "treatments", force: true do |t|
    t.integer  "member_id"
    t.text     "description"
    t.integer  "pastor"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "treatments", ["member_id"], name: "index_treatments_on_member_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.integer  "member_id",              default: 0
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["member_id"], name: "index_users_on_member_id", using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "worships", force: true do |t|
    t.string   "name"
    t.integer  "weekday"
    t.time     "schedule"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
