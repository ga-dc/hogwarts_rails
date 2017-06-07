class CreateHouses < ActiveRecord::Migration
  def change
    create_table :houses do |t|
      t.string :name, null: false
      t.string :image_url
      t.timestamps :date_written
    end
  end
end
