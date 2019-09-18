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

ActiveRecord::Schema.define(version: 2019_09_17_074631) do

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "arrivals", force: :cascade do |t|
    t.integer "product_id"
    t.integer "received_qty"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "artists", force: :cascade do |t|
    t.string "artist_name"
    t.string "artist_image_id"
    t.text "artist_introduction"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["artist_name"], name: "index_artists_on_artist_name"
  end

  create_table "carts", force: :cascade do |t|
    t.integer "end_user_id"
    t.integer "product_id"
    t.integer "product_qty", default: 1, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "deliveries", force: :cascade do |t|
    t.integer "end_user_id"
    t.string "lastname_kanji"
    t.string "firstname_kanji"
    t.string "lastname_kana"
    t.string "firstname_kana"
    t.string "phone_number"
    t.string "zipcode"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "default", default: false, null: false
  end

  create_table "discs", force: :cascade do |t|
    t.integer "product_id"
    t.integer "disc_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "disposals", force: :cascade do |t|
    t.integer "product_id"
    t.integer "scrapped_qty"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "end_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "lastname_kanji"
    t.string "firstname_kanji"
    t.string "lastname_kana"
    t.string "firstname_kana"
    t.string "phone_number"
    t.boolean "leaved", default: false, null: false
    t.datetime "leave_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_end_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_end_users_on_reset_password_token", unique: true
  end

  create_table "favorites", force: :cascade do |t|
    t.integer "end_user_id"
    t.integer "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "genres", force: :cascade do |t|
    t.string "genre_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["genre_name"], name: "index_genres_on_genre_name"
  end

  create_table "inquiries", force: :cascade do |t|
    t.string "inquirer_name"
    t.string "mail"
    t.text "inquiry_content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "labels", force: :cascade do |t|
    t.string "label_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "order_contents", force: :cascade do |t|
    t.integer "order_id"
    t.integer "product_id"
    t.integer "product_qty"
    t.integer "price_sum_ex_tax"
    t.integer "price_sum_in_tax"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.string "deliveries_address"
    t.integer "payment_method"
    t.integer "subtotal_ex_tax"
    t.integer "subtotal_in_tax"
    t.integer "freight"
    t.integer "arrival_status", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.integer "genre_id"
    t.integer "artist_id"
    t.string "product_name"
    t.integer "price"
    t.integer "label_id"
    t.boolean "stopped", default: false, null: false
    t.string "jacket_image_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_name"], name: "index_products_on_product_name"
  end

  create_table "replies", force: :cascade do |t|
    t.integer "inquiry_id"
    t.text "reply_content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "end_user_id"
    t.integer "product_id"
    t.text "review_content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "songs", force: :cascade do |t|
    t.integer "disc_id"
    t.integer "track_number"
    t.string "song_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
