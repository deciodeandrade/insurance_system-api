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

ActiveRecord::Schema.define(version: 2023_10_30_144042) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.string "street"
    t.string "city"
    t.string "state"
    t.string "postal_code"
    t.string "country"
    t.string "number"
    t.string "addressable_type", null: false
    t.bigint "addressable_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["addressable_type", "addressable_id"], name: "index_addresses_on_addressable_type_and_addressable_id"
  end

  create_table "documents", force: :cascade do |t|
    t.string "name"
    t.string "documentable_type", null: false
    t.bigint "documentable_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["documentable_type", "documentable_id"], name: "index_documents_on_documentable_type_and_documentable_id"
  end

  create_table "insurance_contracts", force: :cascade do |t|
    t.string "contract_number"
    t.text "coverage"
    t.bigint "policy_holder_id", null: false
    t.bigint "insurer_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["insurer_id"], name: "index_insurance_contracts_on_insurer_id"
    t.index ["policy_holder_id"], name: "index_insurance_contracts_on_policy_holder_id"
  end

  create_table "insurance_policies", force: :cascade do |t|
    t.string "policy_number"
    t.decimal "premium_amount"
    t.date "start_date"
    t.date "end_date"
    t.string "status"
    t.text "coverage_details"
    t.bigint "insurance_contract_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["insurance_contract_id"], name: "index_insurance_policies_on_insurance_contract_id"
  end

  create_table "insurers", force: :cascade do |t|
    t.string "name"
    t.string "phone_number"
    t.string "email"
    t.string "cnpj"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["cnpj"], name: "index_insurers_on_cnpj"
  end

  create_table "policy_holders", force: :cascade do |t|
    t.string "name"
    t.string "type"
    t.string "cpf_cnpj"
    t.string "phone_number"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "provider", default: "email", null: false
    t.string "uid", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.boolean "allow_password_change", default: false
    t.datetime "remember_created_at"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.string "name"
    t.string "email"
    t.string "profile"
    t.string "userable_type"
    t.bigint "userable_id"
    t.json "tokens"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["uid", "provider"], name: "index_users_on_uid_and_provider", unique: true
    t.index ["userable_type", "userable_id"], name: "index_users_on_userable_type_and_userable_id"
  end

  add_foreign_key "insurance_contracts", "insurers"
  add_foreign_key "insurance_contracts", "policy_holders"
  add_foreign_key "insurance_policies", "insurance_contracts"
end
