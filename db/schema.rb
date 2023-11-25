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

ActiveRecord::Schema[7.0].define(version: 2023_11_25_122746) do
  create_table "budget_items", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "title"
    t.string "category"
    t.integer "cost"
    t.date "spent_date"
    t.integer "wallet_id"
    t.integer "budget_wallet_id", null: false
    t.index ["budget_wallet_id"], name: "index_budget_items_on_budget_wallet_id"
  end

  create_table "budget_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_budget_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_budget_users_on_reset_password_token", unique: true
  end

  create_table "budget_wallets", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "budget"
    t.integer "spent"
    t.string "name"
    t.integer "budget_user_id", null: false
    t.index ["budget_user_id"], name: "index_budget_wallets_on_budget_user_id"
  end

  create_table "items", force: :cascade do |t|
    t.string "title"
    t.string "category"
    t.integer "cost"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date "spent_date"
    t.integer "wallet_id"
    t.index ["wallet_id"], name: "index_items_on_wallet_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "wallets", force: :cascade do |t|
    t.integer "budget"
    t.integer "spent"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
  end

  add_foreign_key "budget_items", "budget_wallets"
  add_foreign_key "budget_wallets", "budget_users"
  add_foreign_key "items", "wallets"
end
