class CreateNeeds < ActiveRecord::Migration
  def change
    create_table :needs do |t|
      t.string :needing
      t.integer :user_id

      t.timestamps
    end
    add_index :needs, [:user_id, :created_at]
  end
end
