class Student < ActiveRecord::Base
  belongs_to :house

  def assign
    self.house = House.all.sample
    self.img_url = Student.all.sample.img_url
  end

end
