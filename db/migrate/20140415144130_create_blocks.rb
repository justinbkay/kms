class CreateBlocks < ActiveRecord::Migration
  def change
    create_table :blocks do |t|
      t.string :number
      t.boolean :active

      t.timestamps
    end

    add_index(:blocks, [:active])
  end
end
