class ChangeDatatypeOnTableFromStringToTextProjects < ActiveRecord::Migration
  def up
    change_column :projects, :goal, :text, :limit => nil
  end

  def down
    change_column :projects, :goal, :string
  end
end
