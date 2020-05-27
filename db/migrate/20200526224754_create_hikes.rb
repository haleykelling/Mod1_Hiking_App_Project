class CreateHikes < ActiveRecord::Migration[6.0]
  def change
    create_table :hikes do |t|
      t.string :name
      t.string :location
      t.float :length
      t.string :difficulty
    end
  end
end
