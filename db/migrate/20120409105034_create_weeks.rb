class CreateWeeks < ActiveRecord::Migration
  def change
    create_table :weeks do |t|
      t.string :mit
      t.integer :user_id

      t.timestamps
    end
    add_index :weeks, [:user_id, :created_at]
  end
end
