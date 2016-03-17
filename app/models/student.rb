class Student < ActiveRecord::Base
  belongs_to :house

  def sorting_hat
    self.house = House.all.sample

  end
end
