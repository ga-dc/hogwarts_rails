class Student < ActiveRecord::Base
  belongs_to :house

  def get_house_data
   self.house = House.all.sample
  end
end
