class CreateHouses < ActiveRecord::Migration
  def change
    create_table :houses do |t|
      t.string :name, null: false
      t.string :image_url

      # f.timestamps
    end
  end
end
