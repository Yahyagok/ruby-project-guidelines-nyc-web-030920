class AddColomnToMeetups < ActiveRecord::Migration[5.0]
  def change
    add_column :meetups, :user_id, :integer
    add_column :meetups, :company_id, :integer
  end
end
