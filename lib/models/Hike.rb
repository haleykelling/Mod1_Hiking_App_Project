class Hike < ActiveRecord::Base
    has_many :favoriteslists
    has_many :users, through: :favoriteslists


    def self.browse_hikes
        self.all.map do |hike|
            hike.name
        end
    end
end