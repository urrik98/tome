class DropLists < ActiveRecord::Migration[5.0]
  def change
    drop_table :lists
  end
end
