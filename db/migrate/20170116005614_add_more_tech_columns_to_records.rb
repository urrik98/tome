class AddMoreTechColumnsToRecords < ActiveRecord::Migration[5.0]
  def change
    add_column :records, :testing, :boolean
    add_column :records, :algorithm, :boolean
    add_column :records, :windows, :boolean
  end
end
