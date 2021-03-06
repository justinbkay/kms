class CreateOfficeDirectReferrals < ActiveRecord::Migration
  def change
    create_table :office_direct_referrals do |t|
      t.references :student
      t.references :block
      t.references :user
      t.datetime :incident_date
      #locations
      t.boolean :bus
      t.boolean :cafeteria
      t.boolean :classroom
      t.boolean :library
      t.boolean :office
      t.boolean :hallway
      t.string :hallway_name
      t.boolean :restroom
      t.boolean :gym
      t.boolean :outside
      t.boolean :music_room
      t.boolean :locker_room
      t.string :other_location
      t.text :location_notes

      #behaviors
      t.boolean :fighting
      t.boolean :assault
      t.boolean :insubordination
      t.boolean :left_supervised_area
      t.boolean :threat_of_physical_harm
      t.boolean :harrassment
      t.boolean :chronic_bullying
      t.boolean :obscene_act
      t.boolean :weapon
      t.boolean :destruction_of_property
      t.boolean :theft
      t.boolean :profanity
      t.boolean :truancy
      t.boolean :tobacco_drugs
      t.boolean :other_behavior
      t.text :behavior_notes

      #environmental
      t.boolean :adult_request
      t.boolean :oral_instruction
      t.boolean :individual_seat_work
      t.boolean :group_work
      t.boolean :managing_materials
      t.boolean :external_interruptions
      t.boolean :classroom_transition
      t.boolean :hallway_passing_time
      t.boolean :teasing_from_peer
      t.boolean :change_in_routine
      t.boolean :guest_teacher
      t.boolean :env_outside
      t.boolean :lunchroom
      t.string :other_environmental
      t.text :environmental_notes

      #motivation
      t.boolean :gain_peer_attention
      t.boolean :gain_adult_attention
      t.boolean :obtain_item
      t.boolean :obtain_activity
      t.boolean :avoid_peers
      t.boolean :avoid_adults
      t.boolean :avoid_seat_work
      t.boolean :avoid_group_work
      t.boolean :avoid_event
      t.string :other_motivation
      t.text :motivation_notes

      #others involved
      t.boolean :peers
      t.boolean :teacher
      t.boolean :staff
      t.boolean :others_guest_teacher
      t.boolean :unknown
      t.boolean :other_involved
      t.text :involved_notes

      #administrative action
      t.boolean :problem_solving_process
      t.boolean :loss_of_privileges
      t.boolean :parent_contact
      t.boolean :individualized_instruction
      t.boolean :lunch_detention
      t.boolean :restitution
      t.boolean :iss
      t.boolean :oss
      t.string :other_action
      t.text :action_notes
      t.references :administrator
      t.datetime :date_closed

      t.timestamps
    end

    add_index(:office_direct_referrals, [:user_id])
    add_index(:office_direct_referrals, [:student_id])

  end
end
