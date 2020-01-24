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

ActiveRecord::Schema.define(version: 2020_01_24_032113) do

  create_table "bakeries", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.string "phone"
    t.string "hours"
    t.text "about"
    t.string "email"
    t.string "img_url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "password"
  end

  create_table "bakers", force: :cascade do |t|
    t.string "name"
    t.string "employment_status"
    t.text "bio"
    t.string "img_url"
    t.string "quote"
    t.boolean "star_baker"
    t.integer "bakery_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "cakes", force: :cascade do |t|
    t.string "name"
    t.string "category"
    t.string "description"
    t.integer "serving_size"
    t.string "dietary_restrictions", default: "[]"
    t.string "img_url"
    t.string "occasion"
    t.integer "bakery_id"
    t.integer "baker_id"
  end

  create_table "flavors", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "ingredients", force: :cascade do |t|
    t.string "name"
    t.integer "cake_id"
    t.integer "flavor_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
