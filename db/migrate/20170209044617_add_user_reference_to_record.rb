class AddUserReferenceToRecord < ActiveRecord::Migration[5.0]
  def change
    add_reference :records, :user, index: true
  end
end
