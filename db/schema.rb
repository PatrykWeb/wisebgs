# frozen_string_literal: true

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

ActiveRecord::Schema.define(version: 20_211_214_224_214) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'facility_sports', force: :cascade do |t|
    t.string 'name'
    t.string 'country'
    t.string 'voivodeship'
    t.string 'city'
    t.string 'postal_code'
    t.string 'street'
    t.integer 'status'
    t.bigint 'panel_id', null: false
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['panel_id'], name: 'index_facility_sports_on_panel_id'
  end

  create_table 'panels', force: :cascade do |t|
    t.integer 'type_panel'
    t.bigint 'user_id', null: false
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['user_id'], name: 'index_panels_on_user_id'
  end

  create_table 'profiles', force: :cascade do |t|
    t.string 'firstname', null: false
    t.string 'surname', null: false
    t.string 'phone', null: false
    t.string 'nip'
    t.string 'krs'
    t.bigint 'user_id', null: false
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['user_id'], name: 'index_profiles_on_user_id'
  end

  create_table 'users', force: :cascade do |t|
    t.string 'email', default: '', null: false
    t.string 'encrypted_password', default: '', null: false
    t.string 'reset_password_token'
    t.datetime 'reset_password_sent_at'
    t.datetime 'remember_created_at'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['email'], name: 'index_users_on_email', unique: true
    t.index ['reset_password_token'], name: 'index_users_on_reset_password_token', unique: true
  end

  add_foreign_key 'facility_sports', 'panels'
  add_foreign_key 'panels', 'users'
  add_foreign_key 'profiles', 'users'
end
