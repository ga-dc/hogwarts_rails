class CreateHouses < ActiveRecord::Migration
  def change
    create_table :houses do |t|
      t.string :name
      t.string :img_url
      t.timestamps null: false
    end
  end
end
