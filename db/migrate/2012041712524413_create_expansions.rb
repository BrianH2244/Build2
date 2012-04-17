class CreateExpansions < ActiveRecord::Migration
  def change
    create_table :expansions do |t|
      t.string :expanding
      t.integer :user_id

      t.timestamps
    end
    add_index :expansions, [:user_id, :created_at]
  end
end
