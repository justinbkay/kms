class CreateDetentionDates < ActiveRecord::Migration
  def change
    create_table :detention_dates do |t|
      t.date :date, null: false

      t.timestamps
    end

    add_index(:detention_dates, [:date], unique: true)
  end
end
