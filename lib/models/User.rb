class User < ActiveRecord::Base
    has_many :favoriteslists
    has_many :hikes, through: :favoriteslists

    $user = ""

    def self.find_or_create_user
        puts "Hello, what is your name?"
        name = gets.strip
        if User.find_by(name: name)
            puts "Welcome back #{name}!"
            $user = User.find_by(name: name)
        else
            $user = User.create(name: name)
            puts "Glad to have you, #{name}!"
        end
    end

    def add_to_my_favorites(list_of_hikes = Hike.all)
        puts "Which hike would you like to add?"
        loop do
            user_choice = gets.strip.to_i
            if user_choice > 0 && user_choice <= list_of_hikes.length
                selected_hike = list_of_hikes[user_choice - 1]
                new_favorite = FavoritesList.find_or_create_by(hike: selected_hike, user: $user)
                show_my_favorites
                break
            else
                puts "Please choose again - invalid entry"
            end
        end
    end
    
    def my_favorite_hikes
        my_favorite_list_entries = FavoritesList.where(user_id: $user.id)
        my_hikes = my_favorite_list_entries.map do |favorite_list_entry|
            Hike.find(favorite_list_entry.hike_id)
        end
        my_hikes
    end
    
    def show_my_favorites
        system("clear")
        my_hikes = my_favorite_hikes
        puts "Here are your saved favorites:\n\n"
        my_hikes.each_with_index do |hike, index|
            puts "#{index + 1}. #{hike.name}"
            puts "      #{hike.location}"
            puts "      #{hike.length} miles"
            puts "      Difficulty: #{hike.difficulty}"
        end
        puts "\n\n"
        if my_hikes.length != 0
            puts "Would you like to edit your favorites? Y/N"
            loop do
                user_input = gets.strip.upcase
                case user_input
                when "Y" 
                    edit_my_favorites
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
    
    def edit_my_favorites
        my_hikes = my_favorite_hikes
        puts "Which number would you like to remove?"
        loop do 
            hike_selection = gets.strip.to_i
            if hike_selection > 0 && hike_selection <= my_hikes.length
                hike_to_delete_from_my_favorites = my_hikes[hike_selection - 1]
                favorites_list_entry_to_delete = FavoritesList.find_by(user_id: $user.id, hike_id: hike_to_delete_from_my_favorites.id)
                favorites_list_entry_to_delete.destroy
                break
            else    
                puts "Please choose again - invalid entry"
            end
        end
        puts "Here is your updated favorites list:\n\n"
        show_my_favorites
    end
          
end

