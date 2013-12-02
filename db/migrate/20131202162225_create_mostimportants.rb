class CreateMostimportants < ActiveRecord::Migration
  def change
    create_table :mostimportants do |t|
      t.string :mostimportantly
      t.integer :user_id

      t.timestamps
    end
    add_index :mostimportants, [:user_id, :created_at]
  end
end
