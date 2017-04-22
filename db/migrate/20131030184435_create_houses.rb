class CreateHouses < ActiveRecord::Migration
  def change
    create_table :house do |t|
      t.string :name,null: false
      t.string :img_url

      t.timestamps
    end
  end
end
