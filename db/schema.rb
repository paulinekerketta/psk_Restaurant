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

ActiveRecord::Schema.define(version: 20161212182014) do

  create_table "drivers", force: :cascade do |t|
    t.string   "name"
    t.integer  "delivery"
    t.float    "payment"
    t.string   "pay"
    t.integer  "day"
    t.integer  "month"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "indices", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "logs", force: :cascade do |t|
    t.float    "out_collection"
    t.float    "in_collection"
    t.float    "total_collection"
    t.float    "total_payout"
    t.float    "profit"
    t.integer  "day"
    t.integer  "month"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "paylogs", force: :cascade do |t|
    t.float    "out_collection"
    t.float    "in_collection"
    t.float    "total_collection"
    t.float    "total_payout"
    t.float    "profit"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "sales", force: :cascade do |t|
    t.integer  "out_sales"
    t.float    "out_collection"
    t.integer  "in_sales"
    t.float    "in_collection"
    t.integer  "day"
    t.integer  "month"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
