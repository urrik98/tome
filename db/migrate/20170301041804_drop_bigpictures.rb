class DropBigpictures < ActiveRecord::Migration[5.0]
  def change
    drop_table :bigpictures
  end
end
