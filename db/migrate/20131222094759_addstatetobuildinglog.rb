class Addstatetobuildinglog < ActiveRecord::Migration
  def up
    add_column :buildinglogs, :state, :string
    remove_column :buildinglogs, :sign_in, :string
    remove_column :buildinglogs, :sign_out, :string
  end

  def down
  end
end
