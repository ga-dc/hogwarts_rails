class Student < ActiveRecord::Base
  belongs_to :house
  def assign
    self.house = House.all.sample
  end 
end
