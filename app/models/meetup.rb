require 'colorize'

class Meetup < ActiveRecord::Base
    belongs_to :company
    belongs_to :user 
    def greet_user 
        puts "The world is calling".colorize



    end 

end 