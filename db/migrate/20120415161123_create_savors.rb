class CreateSavors < ActiveRecord::Migration
  def change
    create_table :savors do |t|
      t.string :savoring
      t.integer :user_id

      t.timestamps
    end
    add_index :savors, [:user_id, :created_at]
  end
end
