class Cli

    def greeting
        system("clear")
        puts "Welcome to the Hiking App!\n\n"
    end

    def show_main_menu
        puts "What would you like to do?\n\n"
        puts "1. See all the hikes"
        puts "2. See your favorites list"
        puts "3. Add a hike to your favorites list"
        puts "4. Edit your favorites list"
        puts "5. Exit!"
    end

    def user_selection_from_main_menu
        user_choice = gets.strip
        case user_choice
            when "1" 
                Hike.browse_hikes
            when "2"
                $user.show_my_favorites
            when "3"
                $user.add_to_my_favorites
            when "4"
                $user.edit_my_favorites
            when "5"
                puts "Goodbye!"
        end   
    end

end