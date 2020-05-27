class User < ActiveRecord::Base
    has_many :favoriteslists
    has_many :hikes, through: :favoriteslists
end