require_relative 'config/environment'

app = Cli.new

app.greeting

User.find_or_create_user

Hike.browse_hikes

binding.pry



