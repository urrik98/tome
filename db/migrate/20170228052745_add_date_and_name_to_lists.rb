class AddDateAndNameToLists < ActiveRecord::Migration[5.0]
  def change
    add_column :lists, :date, :date
    add_column :lists, :name, :string
  end
end
