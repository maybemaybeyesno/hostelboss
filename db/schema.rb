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

ActiveRecord::Schema[7.0].define(version: 2023_07_18_063950) do
  create_table "payment_allocations", force: :cascade do |t|
    t.integer "payment_id", null: false
    t.string "service_type", null: false
    t.integer "service_id", null: false
    t.float "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["payment_id"], name: "index_payment_allocations_on_payment_id"
    t.index ["service_type", "service_id"], name: "index_payment_allocations_on_service"
  end

  create_table "payments", force: :cascade do |t|
    t.string "sender_type"
    t.integer "sender_id"
    t.string "receiver_type"
    t.integer "receiver_id"
    t.datetime "sent_at"
    t.float "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["receiver_type", "receiver_id"], name: "index_transactions_on_receiver"
    t.index ["sender_type", "sender_id"], name: "index_transactions_on_sender"
  end

  create_table "people", force: :cascade do |t|
    t.string "legal_name"
    t.string "friendly_name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "legal_id"
  end

  create_table "rooms", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.integer "beds"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stays", force: :cascade do |t|
    t.integer "person_id", null: false
    t.integer "room_id", null: false
    t.date "start"
    t.date "end"
    t.float "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["person_id"], name: "index_stays_on_person_id"
    t.index ["room_id"], name: "index_stays_on_room_id"
  end

  add_foreign_key "payment_allocations", "payments"
  add_foreign_key "stays", "people"
  add_foreign_key "stays", "rooms"
end
