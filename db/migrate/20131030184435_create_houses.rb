              #############################################
              # 201702221638L     EL MARTES   GIRO
              # change alias envar name
              # |t|
              # did not match THE QUALIFIERS of
              # "f."
class CreateHouses < ActiveRecord::Migration
  def change
      create_table :houses do |t|
        t.string :name, null: false  # GIRO: THIS DIDNT WORK NOT-NULL
      t.string :img_url

      t.timestamps
    end
  end
end
