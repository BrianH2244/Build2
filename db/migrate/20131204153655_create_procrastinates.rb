class CreateProcrastinates < ActiveRecord::Migration
  def change
    create_table :procrastinates do |t|
      t.string :procrastination
      t.integer :user_id

      t.timestamps
    end
    add_index :procrastinates, [:user_id, :created_at]
  end
end
