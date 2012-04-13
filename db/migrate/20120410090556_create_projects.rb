class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :goal
      t.integer :user_id

      t.timestamps
    end
    add_index :projects, [:user_id, :created_at]
  end
end
