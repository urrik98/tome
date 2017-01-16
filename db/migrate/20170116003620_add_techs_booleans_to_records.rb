class AddTechsBooleansToRecords < ActiveRecord::Migration[5.0]
  def change
    add_column :records, :ruby, :boolean
    add_column :records, :ruby_on_rails, :boolean
    add_column :records, :html, :boolean
    add_column :records, :css, :boolean
    add_column :records, :linux, :boolean
    add_column :records, :deployment, :boolean
    add_column :records, :php, :boolean
    add_column :records, :sql, :boolean
    add_column :records, :mysql, :boolean
    add_column :records, :postgresql, :boolean
    add_column :records, :javascript, :boolean
    add_column :records, :jquery, :boolean
    add_column :records, :nodejs, :boolean
    add_column :records, :osx, :boolean
    add_column :records, :sqlite3, :boolean
  end
end
