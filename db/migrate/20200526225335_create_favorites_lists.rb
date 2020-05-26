class CreateFavoritesLists < ActiveRecord::Migration[6.0]
  def change
    create_table :favorites_lists do |t|
      t.integer :user_id
      t.integer :hike_id
    end
  end
end
