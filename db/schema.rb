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

ActiveRecord::Schema.define(version: 20180214025334) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "buildings", force: :cascade do |t|
    t.string "pemilik"
    t.string "jenis"
    t.string "tahun"
    t.string "lantai"
    t.string "fungsi"
    t.string "luas"
    t.string "jenis_jalan"
    t.boolean "ada_sertifikat"
    t.string "tahun_sertifikat"
    t.boolean "ada_imb"
    t.string "notes"
    t.integer "desa_id"
    t.integer "year_id"
    t.integer "kecamatan_id"
    t.integer "kelurahan_id"
    t.integer "dusun_id"
    t.string "foto_lokasi"
    t.integer "pencatat_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "desas", force: :cascade do |t|
    t.string "nama"
    t.string "kode"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dusuns", force: :cascade do |t|
    t.string "nama"
    t.string "kode"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "kecamatans", force: :cascade do |t|
    t.string "nama"
    t.string "kode"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "kelurahans", force: :cascade do |t|
    t.string "nama"
    t.string "kode"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pencatats", force: :cascade do |t|
    t.string "nama"
    t.string "kode"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "years", force: :cascade do |t|
    t.string "nama"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
