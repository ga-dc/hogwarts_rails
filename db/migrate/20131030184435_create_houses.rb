class CreateHouses < ActiveRecord::Migration
  def change
    create_table :houses do |f|
      f.string :name, null: false
      f.string :image_url

      f.timestamps
    end
  end
end
