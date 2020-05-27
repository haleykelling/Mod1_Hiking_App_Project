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

    def add_to_my_favorites
        Hike.browse_hikes
        "Which hike would you like to add?"
        user_choice = gets.strip.to_i
        selected_hike = Hike.all[user_choice - 1]
        new_favorite = FavoritesList.create(hike: selected_hike, user: $user)
    end
    
    def show_my_favorites
        my_favorite_list_entries = FavoritesList.where(user_id: $user.id)
        my_hikes = my_favorite_list_entries.map do |favorite_list_entry|
            Hike.find(favorite_list_entry.hike_id)
        end
        binding.pry
    end


end

