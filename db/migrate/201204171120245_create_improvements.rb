class CreateImprovements < ActiveRecord::Migration
  def change
    create_table :improvements do |t|
      t.string :improving
      t.integer :user_id

      t.timestamps
    end
    add_index :improvements, [:user_id, :created_at]
  end
end
