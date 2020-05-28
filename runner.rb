require_relative 'config/environment'

app = Cli.new

app.greeting

User.find_or_create_user

Cli.show_main_menu

Cli.user_selection_from_main_menu

#binding.pry



