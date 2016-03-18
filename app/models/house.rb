class House < ActiveRecord::Base
  has_many :students

  def self.random_house
    randomNumber = rand(House.all.count)
    return House.all[randomNumber]
  end

end
