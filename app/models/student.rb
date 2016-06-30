class Student < ActiveRecord::Base
  belongs_to :house


  def get_house
    self.house = House.all.sample
  end
end
