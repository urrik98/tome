class AddColumnsToRecord < ActiveRecord::Migration[5.0]
  def change
    add_column :records, :title, :text
    add_column :records, :body, :text
    add_column :records, :project, :text
  end
end
