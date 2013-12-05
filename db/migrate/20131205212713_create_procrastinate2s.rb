class CreateProcrastinate2s < ActiveRecord::Migration
  def change
    create_table :procrastinate2s do |t|
      t.string :procrastination2
      t.integer :user_id

      t.timestamps
    end
    add_index :procrastinate2s, [:user_id, :created_at]
  end
end
