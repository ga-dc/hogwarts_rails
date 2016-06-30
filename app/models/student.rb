class Student < ActiveRecord::Base
  belongs_to :house
  before_create :sorting_hat


  def sorting_hat
    self.house = House.all.sample
  end
end
