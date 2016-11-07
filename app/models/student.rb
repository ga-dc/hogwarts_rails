class Student < ActiveRecord::Base
  belongs_to :house
  before_create :generate_house

  private
  def generate_house
    house_ids = []
    @houses = House.all
    @houses.each do |house|
      house_ids << house.id
    end
    self.house_id = house_ids.sample
  end

end
