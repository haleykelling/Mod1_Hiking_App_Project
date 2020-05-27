class Hike < ActiveRecord::Base
    has_many :favoriteslists
    has_many :users, through: :favoriteslists


    def self.browse_hikes
        system("clear")
        puts "Here are all the hikes we have:\n\n"
        
        self.all.each_with_index do |hike, index|
            puts "#{index + 1}. #{hike.name}"
        end
    end


end