class ChangeDatatypeOnTableFromStringToTextWeeks < ActiveRecord::Migration
  def up
    change_column :weeks, :mit, :text, :limit => nil
  end

  def down
    change_column :weeks, :mit, :string
  end
end
