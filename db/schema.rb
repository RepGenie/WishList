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

ActiveRecord::Schema.define(:version => 20120701222955) do

  create_table "budgets", :force => true do |t|
    t.integer  "user_id"
    t.integer  "for_id"
    t.decimal  "amount"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories", :force => true do |t|
    t.string   "category"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "faqs", :force => true do |t|
    t.string   "question"
    t.text     "answer"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "groups", :force => true do |t|
    t.string   "name"
    t.boolean  "active"
    t.string   "referred"
    t.date     "creation_date"
    t.boolean  "paying"
    t.decimal  "subscription_rate"
    t.date     "subscription_ends"
    t.decimal  "discount_rate"
    t.date     "discount_ends"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "items", :force => true do |t|
    t.integer  "requested_by"
    t.integer  "category_id"
    t.integer  "priority_id"
    t.string   "name"
    t.string   "creator"
    t.text     "note"
    t.date     "added_date"
    t.boolean  "active"
    t.integer  "buyer"
    t.date     "buy_date"
    t.decimal  "cost"
    t.integer  "cart"
    t.date     "cart_date"
    t.text     "url"
    t.integer  "format_id"
    t.boolean  "nonlist"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "priorities", :force => true do |t|
    t.string   "level"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.integer  "group_id"
    t.string   "name"
    t.string   "password"
    t.boolean  "active"
    t.boolean  "admin"
    t.string   "email"
    t.boolean  "primary"
    t.datetime "invited"
    t.datetime "last_logon"
    t.datetime "this_logon"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
