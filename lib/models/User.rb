class User < ActiveRecord::Base
    has_many :favoriteslists
    has_many :hikes, through: :favoriteslists

    def self.find_or_create_user
        puts "Hello, what is your name?"
        name = gets.strip
        if User.find_by(name: name)
            puts "Welcome back #{name}!"
        else
            User.create(name: name)
            puts "Glad to have you!"
        end
        return name
    end


end

