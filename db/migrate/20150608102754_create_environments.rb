class CreateEnvironments < ActiveRecord::Migration
  def change
    create_table :environments do |t|
      t.string :change
      t.integer :user_id

      t.timestamps
    end
    add_index :environments, [:user_id, :created_at]
  end
end
