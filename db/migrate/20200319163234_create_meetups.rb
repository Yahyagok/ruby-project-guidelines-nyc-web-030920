class CreateMeetups < ActiveRecord::Migration[5.0]
  def change
    create_table :meetups do |t|
      t.integer :capacity
      t.integer :discount_percent
      t.string :this_weeks_event
      t.string :book
      t.string :film
      t.string :business
      t.string :tech 
      t.string :art 
      t.string :photograpy 
      t.string :learning 
    end 
  end
end
