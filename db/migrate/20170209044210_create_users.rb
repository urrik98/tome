class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :roles do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
    create_table :users do |t|
      t.string :name
      t.belongs_to :role, foreign_key: true

      t.timestamps
    end
  end
end
