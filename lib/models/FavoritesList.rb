class FavoritesList < ActiveRecord::Base
    belongs_to :hike
    belongs_to :user
end