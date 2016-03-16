class Student < ActiveRecord::Base
  belongs_to :house

  def pick_house
    self.house = House.all.sample
  end
end
