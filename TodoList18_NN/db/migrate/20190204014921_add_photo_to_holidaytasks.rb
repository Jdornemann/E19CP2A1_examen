class AddPhotoToHolidaytasks < ActiveRecord::Migration[5.2]
  def change
    add_column :holidaytasks, :photo, :string
  end
end
