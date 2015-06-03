class CreatePrinciples < ActiveRecord::Migration
  def change
    create_table :principles do |t|
      t.string :value
      t.integer :user_id

      t.timestamps
    end
    add_index :principles, [:user_id, :created_at]
  end
end
