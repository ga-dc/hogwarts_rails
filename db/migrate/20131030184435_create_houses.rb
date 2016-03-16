class CreateHouses < ActiveRecord::Migration
  def change
    create_table :houses do |t|
      f.string :name
      f.string :img_url
      f.timestamps
    end
  end
end
