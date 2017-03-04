class AddBigpictureReferenceToTodos < ActiveRecord::Migration[5.0]
  def change
    add_reference :todos, :bigpictures, foreign_key: true
  end
end
