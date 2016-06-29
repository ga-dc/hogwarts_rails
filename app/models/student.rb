class Student < ActiveRecord::Base
  belongs_to :house

  def self.sorting_hat student
      prng = Random.new
      choice = prng.rand(1..4)
      student.house = House.find(choice)
      return student
  end

end
