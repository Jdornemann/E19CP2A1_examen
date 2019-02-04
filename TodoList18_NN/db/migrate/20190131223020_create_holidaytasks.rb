class CreateHolidaytasks < ActiveRecord::Migration[5.2]
  def change
    create_table :holidaytasks do |t|
      t.string :name
      t.string :description
      t.boolean :done

      t.timestamps
    end
  end
end
