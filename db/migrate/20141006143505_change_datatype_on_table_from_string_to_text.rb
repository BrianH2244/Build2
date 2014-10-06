class ChangeDatatypeOnTableFromStringToText < ActiveRecord::Migration
  def up
    change_column :journals, :event, :text, :limit => nil
  end

  def down
    change_column :journals, :event, :string
  end
end
