class Cli

    def app_banner
        puts "\n\n"
        puts " _____     _                  _   _ _ _        _ "
        puts "|_   _|_ _| | _____    __ _  | | | (_) | _____| |"
        puts "  | |/ _` | |/ / _ \\  / _` | | |_| | | |/ / _ \\ |"
        puts "  | | (_| |   <  __/ | (_| | |  _  | |   <  __/_|"
        puts "  |_|\\__,_|_|\\_\\___|  \\__,_| |_| |_|_|_|\\_\\___(_)"
        puts "\n\n\n"
    end

    def welcome_banner
        puts "\n"
        puts " _    _      _                            _      "
        puts "| |  | | ___| | ___ ___  _ __ ___   ___  | |_ ___"   
        puts "| |/\\| |/ _ \\ |/ __/ _ \\| '_ ` _ \\ / _ \\ | __/ _ \\"  
        puts "\\  /\\  /  __/ | (_| (_) | | | | | |  __/ | || (_) |" 
        puts " \\/  \\/ \\___|_|\\___\\___/|_| |_| |_|\\___|  \\__\\___/ "
    end

    def self.goodbye_banner
        puts "\n\n"
        puts " _____                 _      _                _ "
        puts "|  __ \\               | |    | |              | |"
        puts "| |  \\/ ___   ___   __| |____| |__  _   _  ___| |"
        puts "| | __ / _ \\ / _ \\ / _` |____| '_ \\| | | |/ _ \\ |"
        puts "| |_\\ \\ (_) | (_) | (_| |    | |_) | |_| |  __/_|"
        puts " \\____/\\___/ \\___/ \\__,_|    |_.__/ \\__, |\\___(_)"
        puts "                                     __/ |       "
        puts "                                    |___/        "
        puts "\n\n"
    end

    def greeting
        system("clear")
        welcome_banner
        app_banner
    end

    def self.show_main_menu
        puts "What would you like to do?"
        puts "\n"
        puts "1. Browse hikes and pick your favorites"
        puts "2. See your favorites list"
        puts "3. Exit!"
    end

    def self.user_selection_from_main_menu
        user_choice = gets.strip.to_i
        case user_choice
            when 1
                sleep(0.5)
                browse_hikes_menu
                pick_hike_options
                next_options
                pick_option
            when 2
                sleep(0.5)
                $user.show_my_favorites
                next_options
                pick_option
            when 3
                sleep(0.5)
                system("clear")
                goodbye_banner
                sleep(1.5)
                exit!
            else
                puts "Please choose a valid selection"
                user_selection_from_main_menu
        end   
    end

    def self.browse_hikes_menu
        system("clear")
        puts "What would you like to see?"
        puts "\n"
        puts "1. All Hikes"
        puts "2. Boulder Hikes"
        puts "3. Breckenridge Hikes"
    end

    def self.pick_hike_options
        user_choice = gets.strip.to_i
        case user_choice
        when 1
            sleep(0.5)
            Hike.browse_hikes
        when 2
            sleep(0.5)
            Hike.browse_hikes_city("Boulder, CO")
        when 3
            sleep(0.5)
            Hike.browse_hikes_city("Breckenridge, CO")
        else
            puts "Please choose a valid selection"
            pick_hike_options
        end
    end

    def self.next_options
        puts "What would you like to do next?"
        puts "\n"
        puts "1. Return to Main Menu"
        puts "2. Exit the Program"
    end

    def self.pick_option
        user_choice = gets.strip.to_i
        case user_choice
        when 1
            system("clear")
            app_banner
            show_main_menu
            user_selection_from_main_menu
        when 2
            system("clear")
            goodbye_banner
            sleep(1.5) 
            exit!
        else
            puts "Please choose a valid selection"
            pick_option
        end
    end

end