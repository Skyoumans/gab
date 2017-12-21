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

ActiveRecord::Schema.define(version: 20171221192756) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "communications", force: :cascade do |t|
    t.string "phone_one"
    t.string "phone_two"
    t.string "cell"
    t.string "fax"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contacts", force: :cascade do |t|
    t.string "title"
    t.string "first_name"
    t.string "last_name"
    t.boolean "board_member"
    t.string "recognition"
    t.string "status"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "display_addresses", force: :cascade do |t|
    t.string "type"
    t.string "name"
    t.string "address_one"
    t.string "address_two"
    t.string "city"
    t.string "state"
    t.string "zipcode"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "invoice_billing_tos", force: :cascade do |t|
    t.string "company"
    t.string "attn"
    t.string "address"
    t.string "city"
    t.string "state"
    t.string "zip"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "invoice_clients", force: :cascade do |t|
    t.string "organization"
    t.string "station_group"
    t.string "station"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "invoices", force: :cascade do |t|
    t.string "invoice_date"
    t.string "type"
    t.string "status"
    t.string "description"
    t.string "payment_type"
    t.string "check_number"
    t.integer "check_amount"
    t.string "timing"
    t.string "terms"
    t.string "discount_rate"
    t.date "date_due"
    t.integer "date_deposit_amount_paid"
    t.date "date_balance_due"
    t.integer "subtotal_price"
    t.integer "discount_amount"
    t.integer "total"
    t.integer "amount_paid"
    t.integer "balance_paid"
    t.integer "amount_due"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "org_billing_addresses", force: :cascade do |t|
    t.string "address_one"
    t.string "address_two"
    t.string "city"
    t.string "state"
    t.string "zip"
    t.string "country"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "org_physical_addresses", force: :cascade do |t|
    t.string "address_one"
    t.string "address_two"
    t.string "city"
    t.string "state"
    t.string "zip"
    t.string "country"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "organizations", force: :cascade do |t|
    t.string "organization_name"
    t.string "type"
    t.boolean "member"
    t.boolean "sponsor"
    t.string "phone_one"
    t.string "phone_two"
    t.string "fax"
    t.string "email"
    t.string "website"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pep_clients", force: :cascade do |t|
    t.string "client"
    t.string "ISCIADID"
    t.string "time"
    t.string "name"
    t.integer "min_airs"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "peps", force: :cascade do |t|
    t.date "start_date"
    t.string "type"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "primary_addresses", force: :cascade do |t|
    t.string "address_one"
    t.string "address_two"
    t.string "city"
    t.string "state"
    t.string "zipcode"
    t.string "country"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "status"
    t.string "product_name"
    t.string "type"
    t.string "keywords"
    t.boolean "taxable"
    t.float "price"
    t.integer "total_sold"
    t.float "gross_sale"
    t.float "net_profit"
    t.string "internal_notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "station_billing_addresses", force: :cascade do |t|
    t.string "address_one"
    t.string "address_two"
    t.string "city"
    t.string "state"
    t.string "zip"
    t.string "country"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "station_group_billing_addresses", force: :cascade do |t|
    t.string "address_one"
    t.string "address_two"
    t.string "city"
    t.string "state"
    t.string "zip"
    t.string "country"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "station_group_shipping_addresses", force: :cascade do |t|
    t.string "address_one"
    t.string "address_two"
    t.string "city"
    t.string "state"
    t.string "zip"
    t.string "country"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "station_groups", force: :cascade do |t|
    t.string "station_group"
    t.string "organization"
    t.string "phone_one"
    t.string "phone_two"
    t.string "fax"
    t.string "group_email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "station_shipping_addresses", force: :cascade do |t|
    t.string "address_one"
    t.string "address_two"
    t.string "city"
    t.string "state"
    t.string "zip"
    t.string "country"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stations", force: :cascade do |t|
    t.string "call_letters"
    t.string "slogan"
    t.string "airing_type"
    t.string "frequency"
    t.string "organization"
    t.string "station_group"
    t.string "city_of_license"
    t.string "phone_one"
    t.string "phone_two"
    t.string "fax"
    t.string "email"
    t.string "website"
    t.boolean "member"
    t.string "type"
    t.string "dues_exp"
    t.boolean "current"
    t.string "gm"
    t.string "gm_email"
    t.string "county"
    t.string "format"
    t.string "twitter"
    t.string "facebook"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
