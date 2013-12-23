class CreateBuildinglogs < ActiveRecord::Migration
  def change
    create_table :buildinglogs do |t|
      t.string :sign_in
      t.string :sign_out

      t.timestamps
    end
  end
end
