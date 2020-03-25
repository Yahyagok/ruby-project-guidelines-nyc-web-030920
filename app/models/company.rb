class Company < ActiveRecord::Base
    has_many :meetups 
    has_many :users, through: :meetups
end 