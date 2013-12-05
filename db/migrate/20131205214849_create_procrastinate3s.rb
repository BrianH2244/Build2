class CreateProcrastinate3s < ActiveRecord::Migration
  def change
    create_table :procrastinate3s do |t|
      t.string :procrastination3
      t.integer :user_id

      t.timestamps
    end
    add_index :procrastinate3s, [:user_id, :created_at]
  end
end
