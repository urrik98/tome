class AddTitleToBigpictures < ActiveRecord::Migration[5.0]
  def change
    add_column :bigpictures, :title, :string
  end
end
