class AddTimesViewedToRecords < ActiveRecord::Migration[5.0]
  def change
    add_column :records, :times_viewed, :integer
  end
end
