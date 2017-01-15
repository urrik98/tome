class AddTechToRecords < ActiveRecord::Migration[5.0]
  def change
    add_column :records, :technology, :text
  end
end
