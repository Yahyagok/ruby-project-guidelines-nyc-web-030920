class AddColumnToMeetups < ActiveRecord::Migration[5.0]
  def change
    add_column :meetups, :single_club, :string 
  end
end
