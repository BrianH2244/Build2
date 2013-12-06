class CreateGratefuls < ActiveRecord::Migration
  def change
    create_table :gratefuls do |t|
      t.string :gratitude
      t.integer :user_id

      t.timestamps
    end
    add_index :gratefuls, [:user_id, :created_at]
  end
end
