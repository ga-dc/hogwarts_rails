class AddTimestampsToHouses < ActiveRecord::Migration
  def change
    add_column :houses, :created_at, :datetime
    add_column :houses, :updated_at, :datetime
  end
end
