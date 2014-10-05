class CreateJournals < ActiveRecord::Migration
  def change
    create_table :journals do |t|
      t.string :event
      t.integer :user_id

      t.timestamps
    end
    add_index :journals, [:user_id, :created_at]
  end
end
