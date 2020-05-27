class CreateFavoritesLists < ActiveRecord::Migration[6.0]
  def change
    create_table :favorites_lists do |t|
      t.references :hike, foreign_key: true, null: false
      t.references :user, foreign_key: true, null: false
    end
  end
end
