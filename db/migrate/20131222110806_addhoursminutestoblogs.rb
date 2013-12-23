class Addhoursminutestoblogs < ActiveRecord::Migration
  def up
    add_column :buildinglogs, :hour, :integer
    add_column :buildinglogs, :minutes, :integer
    remove_column :buildinglogs, :time, :string
  end

  def down
  end
end
