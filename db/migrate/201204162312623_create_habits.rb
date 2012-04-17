class CreateHabits < ActiveRecord::Migration
  def change
    create_table :habits do |t|
      t.string :habitual
      t.integer :user_id

      t.timestamps
    end
    add_index :habits, [:user_id, :created_at]
  end
end
