class Addampm < ActiveRecord::Migration
  def up
    add_column :buildinglogs, :ampm, :string
  end

  def down
    remove_column :buildinglogs, :ampm, :string
  end
end
