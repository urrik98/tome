class CreateRecords < ActiveRecord::Migration[5.0]
  def change
    create_table :records do |t|

      t.timestamps
    end
  end
end
