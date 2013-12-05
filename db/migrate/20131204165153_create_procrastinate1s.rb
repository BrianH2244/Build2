class CreateProcrastinate1s < ActiveRecord::Migration
  def change
    create_table :procrastinate1s do |t|
      t.string :procrastination1
      t.integer :user_id

      t.timestamps
    end
    add_index :procrastinate1s, [:user_id, :created_at]
  end
end
