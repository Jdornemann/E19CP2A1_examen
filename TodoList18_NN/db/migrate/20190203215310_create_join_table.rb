class CreateJoinTable < ActiveRecord::Migration[5.2]
  def change
    create_join_table :users, :holidaytasks do |t|
      # t.index [:user_id, :holidaytask_id]
      # t.index [:holidaytask_id, :user_id]
    end
  end
end
