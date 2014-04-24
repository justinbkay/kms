class CreateDetentions < ActiveRecord::Migration
  def change
    create_table :detentions do |t|
      t.references :office_direct_referral, null: false
      t.references :detention_date, null:false
      t.integer :detention_type
      t.boolean :completed, default: false
      t.integer :assigned_by, null:false
      t.timestamps
    end
    add_index(:detentions, [:office_direct_referral_id, :detention_date_id], name: 'odr_detention_date')
  end

end
