class CreateUsers < ActiveRecord::Migration

  def change

    create_table :users do |t|
      t.string :email
      t.string :password_digest
      t.string :first_name
      t.string :last_name
      t.integer :role, :default => 0
      t.boolean :active, :default => true
      t.timestamps
    end

    add_index(:users, [:email], unique: true)

  end

end
