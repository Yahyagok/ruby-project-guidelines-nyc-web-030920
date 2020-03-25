class ChangeColumnNameOnMeetups < ActiveRecord::Migration[5.0]
  def change
    rename_column :meetups, :photograpy, :photography
  end
end
