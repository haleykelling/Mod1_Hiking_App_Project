require_relative 'config/environment'

app = Cli.new

app.greeting

User.find_or_create_user

app.show_main_menu
app.user_selection_from_main_menu

#binding.pry



