class Hike < ActiveRecord::Base
    has_many :favoriteslists
    has_many :users, through: :favoriteslists
end