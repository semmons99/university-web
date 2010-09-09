# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100909192002) do

  create_table "assignment_submission_statuses", :force => true do |t|
    t.text     "name"
    t.integer  "sort_order"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "assignment_submissions", :force => true do |t|
    t.integer  "assignment_id"
    t.integer  "user_id"
    t.integer  "submission_status_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "assignments", :force => true do |t|
    t.integer  "course_id"
    t.text     "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "chat_channel_memberships", :force => true do |t|
    t.integer   "channel_id"
    t.integer   "user_id"
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  create_table "chat_channels", :force => true do |t|
    t.text      "name"
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  create_table "chat_handles", :force => true do |t|
    t.text      "name"
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  create_table "chat_messages", :force => true do |t|
    t.text      "body"
    t.timestamp "recorded_at"
    t.integer   "handle_id"
    t.integer   "channel_id"
    t.integer   "topic_id"
  end

  create_table "chat_topics", :force => true do |t|
    t.text      "name"
    t.integer   "channel_id"
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  create_table "course_memberships", :force => true do |t|
    t.integer  "user_id"
    t.integer  "course_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "github_project_url"
  end

  create_table "courses", :force => true do |t|
    t.text     "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string    "email",                                   :default => "",   :null => false
    t.string    "encrypted_password",       :limit => 128, :default => "",   :null => false
    t.string    "password_salt",                           :default => "",   :null => false
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.boolean   "requires_password_change",                :default => true
    t.string    "access_level"
    t.text      "real_name"
    t.text      "nickname"
    t.text      "twitter_account_name"
    t.text      "github_account_name"
  end

end
