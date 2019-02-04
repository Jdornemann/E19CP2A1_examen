class DropInstalls < ActiveRecord::Migration[5.2]
  def change
    drop_table :taskholidays
    drop_table :taskholidays_users
  end
end
