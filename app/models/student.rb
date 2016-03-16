class Student < ActiveRecord::Base
  belongs_to :house

  def pick_house
    Student.house = House.all.sample
  end
end
