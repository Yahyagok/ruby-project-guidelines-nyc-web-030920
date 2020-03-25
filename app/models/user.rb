class User < ActiveRecord::Base
    has_many :meetups
    has_many :companies, through: :meetups 
end 