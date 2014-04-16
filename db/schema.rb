# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20140415144130) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "blocks", force: true do |t|
    t.string   "number"
    t.boolean  "active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "blocks", ["active"], name: "index_blocks_on_active", using: :btree

  create_table "minor_direct_referrals", force: true do |t|
    t.integer  "student_id"
    t.integer  "block_id"
    t.integer  "user_id"
    t.datetime "incident_date"
    t.boolean  "bus"
    t.boolean  "cafeteria"
    t.boolean  "classroom"
    t.boolean  "library"
    t.boolean  "office"
    t.boolean  "hallway"
    t.string   "hallway_name"
    t.boolean  "restroom"
    t.boolean  "gym"
    t.boolean  "outside"
    t.boolean  "music_room"
    t.boolean  "locker_room"
    t.string   "other_location"
    t.text     "location_notes"
    t.boolean  "fighting"
    t.boolean  "assault"
    t.boolean  "insubordination"
    t.boolean  "left_supervised_area"
    t.boolean  "threat_of_physical_harm"
    t.boolean  "harrassment"
    t.boolean  "chronic_bullying"
    t.boolean  "obscene_act"
    t.boolean  "weapon"
    t.boolean  "destruction_of_property"
    t.boolean  "theft"
    t.boolean  "profanity"
    t.boolean  "truancy"
    t.boolean  "tabacco_drugs"
    t.text     "behaviour_notes"
    t.boolean  "adult_request"
    t.boolean  "oral_instruction"
    t.boolean  "individual_seat_work"
    t.boolean  "group_work"
    t.boolean  "managing_materials"
    t.boolean  "external_interruptions"
    t.boolean  "classroom_transition"
    t.boolean  "hallway_passing_time"
    t.boolean  "teasing_from_peer"
    t.boolean  "change_in_routine"
    t.boolean  "guest_teacher"
    t.boolean  "lunchroom"
    t.string   "other_environmental"
    t.text     "environmental_notes"
    t.boolean  "gain_peer_attention"
    t.boolean  "gain_adult_attention"
    t.boolean  "obtain_item"
    t.boolean  "obtain_activity"
    t.boolean  "avoid_peers"
    t.boolean  "avoid_adults"
    t.boolean  "avoid_seat_work"
    t.boolean  "avoid_group_work"
    t.boolean  "avoid_event"
    t.string   "other_motivation"
    t.text     "motivation_notes"
    t.boolean  "peers"
    t.boolean  "teacher"
    t.boolean  "staff"
    t.boolean  "unknown"
    t.string   "other_involved"
    t.text     "involved_notes"
    t.boolean  "problem_solving_process"
    t.boolean  "loss_of_privileges"
    t.boolean  "parent_contact"
    t.boolean  "individualized_instruction"
    t.boolean  "lunch_detention"
    t.boolean  "restitution"
    t.boolean  "iss"
    t.boolean  "oss"
    t.string   "other_action"
    t.text     "action_notes"
    t.integer  "administrator_id_id"
    t.datetime "date_closed"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "minor_direct_referrals", ["student_id"], name: "index_minor_direct_referrals_on_student_id", using: :btree
  add_index "minor_direct_referrals", ["user_id"], name: "index_minor_direct_referrals_on_user_id", using: :btree

  create_table "office_direct_referrals", force: true do |t|
    t.integer  "student_id"
    t.integer  "block_id"
    t.integer  "user_id"
    t.datetime "incident_date"
    t.boolean  "bus"
    t.boolean  "cafeteria"
    t.boolean  "classroom"
    t.boolean  "library"
    t.boolean  "office"
    t.boolean  "hallway"
    t.string   "hallway_name"
    t.boolean  "restroom"
    t.boolean  "gym"
    t.boolean  "outside"
    t.boolean  "music_room"
    t.boolean  "locker_room"
    t.string   "other_location"
    t.text     "location_notes"
    t.boolean  "fighting"
    t.boolean  "assault"
    t.boolean  "insubordination"
    t.boolean  "left_supervised_area"
    t.boolean  "threat_of_physical_harm"
    t.boolean  "harrassment"
    t.boolean  "chronic_bullying"
    t.boolean  "obscene_act"
    t.boolean  "weapon"
    t.boolean  "destruction_of_property"
    t.boolean  "theft"
    t.boolean  "profanity"
    t.boolean  "truancy"
    t.boolean  "tabacco_drugs"
    t.text     "behaviour_notes"
    t.boolean  "adult_request"
    t.boolean  "oral_instruction"
    t.boolean  "individual_seat_work"
    t.boolean  "group_work"
    t.boolean  "managing_materials"
    t.boolean  "external_interruptions"
    t.boolean  "classroom_transition"
    t.boolean  "hallway_passing_time"
    t.boolean  "teasing_from_peer"
    t.boolean  "change_in_routine"
    t.boolean  "guest_teacher"
    t.boolean  "lunchroom"
    t.string   "other_environmental"
    t.text     "environmental_notes"
    t.boolean  "gain_peer_attention"
    t.boolean  "gain_adult_attention"
    t.boolean  "obtain_item"
    t.boolean  "obtain_activity"
    t.boolean  "avoid_peers"
    t.boolean  "avoid_adults"
    t.boolean  "avoid_seat_work"
    t.boolean  "avoid_group_work"
    t.boolean  "avoid_event"
    t.string   "other_motivation"
    t.text     "motivation_notes"
    t.boolean  "peers"
    t.boolean  "teacher"
    t.boolean  "staff"
    t.boolean  "unknown"
    t.string   "other_involved"
    t.text     "involved_notes"
    t.boolean  "problem_solving_process"
    t.boolean  "loss_of_privileges"
    t.boolean  "parent_contact"
    t.boolean  "individualized_instruction"
    t.boolean  "lunch_detention"
    t.boolean  "restitution"
    t.boolean  "iss"
    t.boolean  "oss"
    t.string   "other_action"
    t.text     "action_notes"
    t.integer  "administrator_id_id"
    t.datetime "date_closed"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "office_direct_referrals", ["student_id"], name: "index_office_direct_referrals_on_student_id", using: :btree
  add_index "office_direct_referrals", ["user_id"], name: "index_office_direct_referrals_on_user_id", using: :btree

  create_table "students", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "student_number"
    t.integer  "grade"
    t.integer  "year"
    t.boolean  "active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "students", ["student_number"], name: "index_students_on_student_number", unique: true, using: :btree

  create_table "users", force: true do |t|
    t.string   "email"
    t.string   "password_digest"
    t.string   "first_name"
    t.string   "last_name"
    t.boolean  "active",          default: true
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree

end
