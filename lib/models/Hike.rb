class Hike < ActiveRecord::Base
    has_many :favoriteslists
    has_many :users, through: :favoriteslists


    def self.browse_hikes
        system("clear")
        puts "Here are all the hikes we have:\n\n"
        
        self.all.each_with_index do |hike, index|
            puts "#{index + 1}. #{hike.name}"
            puts "      #{hike.location}"
            puts "      #{hike.length} miles"
            puts "      Difficulty: #{hike.difficulty}"
        end

        puts "While you are here, would you like to add any of these to your favorites? Y/N"
        loop do
            user_input = gets.strip.upcase
            case user_input
            when "Y" 
                $user.add_to_my_favorites
                break
            when "N"
                puts "Okay! No problem."
                break
            else
                puts "Invalid entry:  Please enter Y/N" 
            end
        end
    end

    def self.browse_hikes_city(city)
        system("clear")
        puts "Here are all the hikes in #{city}:\n\n"
        selected_city = Hike.where(location: city)
        selected_city.each_with_index do |hike, index|
            puts "#{index + 1}. #{hike.name}"
            puts "      #{hike.location}"
            puts "      #{hike.length} miles"
            puts "      Difficulty: #{hike.difficulty}"
        end

        puts "While you are here, would you like to add any of these to your favorites? Y/N"
        loop do
            user_input = gets.strip.upcase
            case user_input
            when "Y" 
                $user.add_to_my_favorites(selected_city)
                break
            when "N"
                puts "Okay! No problem."
                break
            else
                puts "Invalid entry:  Please enter Y/N" 
            end
        end
    end


end