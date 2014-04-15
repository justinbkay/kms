class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.string :student_number
      t.integer :grade
      t.integer :year
      t.boolean :active

      t.timestamps
    end

    add_index(:students, [:student_number], unique: true)
  end
end
