class Cli

    def greeting
        system("clear")
        puts "Welcome to the Hiking App!\n\n"
    end

    def self.show_main_menu
        puts "What would you like to do?\n\n"
        puts "1. See all the hikes"
        puts "2. See your favorites list"
        puts "3. Add a hike to your favorites list"
        puts "4. Exit!"
    end

    def self.user_selection_from_main_menu
        user_choice = gets.strip.to_i
        case user_choice
            when 1
                Hike.browse_hikes
                next_options
                pick_option
            when 2
                $user.show_my_favorites
                next_options
                pick_option
            when 3
                $user.add_to_my_favorites
                next_options
                pick_option
            when 4
                system("clear")
                puts "Thanks for Visiting! Good-bye!"
                sleep(2)
                exit!
            else
                puts "Please choose a valid selection"
                user_selection_from_main_menu
        end   
    end

    def self.next_options
        puts "What would you like to do next?"
        puts "1. Return to Main Menu"
        puts "2. Exit the Program"
    end

    def self.pick_option
        user_choice = gets.strip.to_i
        case user_choice
        when 1
            system("clear")
            show_main_menu
            user_selection_from_main_menu
        when 2
            system("clear")
            puts "Thanks for Visiting! Good-bye!"
            sleep(2) 
            exit!
        else
            puts "Please choose a valid selection"
            pick_option
        end
    end

end