class AddCompletedToLists < ActiveRecord::Migration[5.0]
  def change
    add_column :lists, :completed, :decimal, :precision => 5, :scale => 2
  end
end
