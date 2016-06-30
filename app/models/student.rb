class Student < ActiveRecord::Base
  belongs_to :house
  # after_create:sorting_hat

  def sorting_hat 
    prng = Random.new
    house_id = prng.rand(5..8)
    self.house = House.find(house_id)
  end
end
