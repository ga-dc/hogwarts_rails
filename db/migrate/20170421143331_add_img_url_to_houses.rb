class AddImgUrlToHouses < ActiveRecord::Migration[5.0]
  def change
    add_column :houses, :image_url, :string
  end
end
