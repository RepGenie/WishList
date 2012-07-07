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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120707224046) do

  create_table "categories", :force => true do |t|
    t.string   "category"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "faqs", :force => true do |t|
    t.text     "question"
    t.text     "answer"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "formats", :force => true do |t|
    t.string   "format"
    t.integer  "category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "items", :force => true do |t|
    t.integer  "user_id"
    t.integer  "priority_id"
    t.integer  "category_id"
    t.integer  "format_id"
    t.string   "item"
    t.string   "artist"
    t.string   "note"
    t.boolean  "active"
    t.integer  "buyer"
    t.date     "buy_date"
    t.decimal  "cost"
    t.integer  "cart"
    t.date     "cart_date"
    t.text     "url"
    t.boolean  "nonlist"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "messages", :force => true do |t|
    t.integer  "user_id"
    t.integer  "to_user"
    t.text     "message"
    t.boolean  "active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "priorities", :force => true do |t|
    t.string   "priority"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "profiles", :force => true do |t|
    t.integer  "user_id"
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reminders", :force => true do |t|
    t.integer  "subscription_id"
    t.date     "sent_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "subscriptions", :force => true do |t|
    t.integer  "user_id"
    t.integer  "referred_by"
    t.decimal  "rate"
    t.decimal  "discount_rate"
    t.date     "discount_ends"
    t.date     "subscription_ends"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "password"
    t.boolean  "admin"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
