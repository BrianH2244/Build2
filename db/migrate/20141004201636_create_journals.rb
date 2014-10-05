class CreateJournals < ActiveRecord::Migration
  def change
    create_table :journals do |t|
      t.text :event
      t.integer :user_id

      t.timestamps
    end
    add_index :journals, :limit => 1000 [:user_id, :created_at]
  end
end
