class RemoveColumnsFromRecords < ActiveRecord::Migration[5.0]
  def change
    remove_column :records, :ruby
    remove_column :records, :ruby_on_rails
    remove_column :records, :html
    remove_column :records, :css
    remove_column :records, :linux
    remove_column :records, :deployment
    remove_column :records, :php
    remove_column :records, :sql
    remove_column :records, :mysql
    remove_column :records, :postgresql
    remove_column :records, :javascript
    remove_column :records, :jquery
    remove_column :records, :nodejs
    remove_column :records, :osx
    remove_column :records, :sqlite3
    remove_column :records, :testing
    remove_column :records, :algorithm
    remove_column :records, :windows
  end
end
