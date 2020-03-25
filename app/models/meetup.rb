class Meetup < ActiveRecord::Base
    belongs_to :company
    belongs_to :user 


    def all_meetup 
        Meetup.all 

    end 
end 