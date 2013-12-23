class AddTimetoBuildLog < ActiveRecord::Migration
  def up
    add_column :buildinglogs, :time, :string
  end

  def down
    remove_column :buildinglogs, :time, :string
  end
end
