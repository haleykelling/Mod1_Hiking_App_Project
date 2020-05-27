class User < ActiveRecord::Base
    has_many :favoriteslists
    has_many :hikes, through: :favoriteslists

    def self.create_user
        puts "Hello, what is your name?"
        name = gets.chomp
        User.create(name: name)
        return name
    end


end

