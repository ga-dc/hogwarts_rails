class Student < ActiveRecord::Base
  belongs_to :house

  def self.sorting_hat student
    prng = Random.new
    house_id = prng.rand(1..4)
    student.house = House.find(house_id)
    return student

  end
end
