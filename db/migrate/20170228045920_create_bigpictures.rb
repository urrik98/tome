class CreateBigpictures < ActiveRecord::Migration[5.0]
  def change
    create_table :bigpictures do |t|

      t.timestamps
    end
  end
end
