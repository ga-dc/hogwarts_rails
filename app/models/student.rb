class Student < ActiveRecord::Base
  belongs_to :house

  def self.NewRandHouse (name, url)
    randomNumber = rand(House.all.count)
    house = House.all.eq(randomNumber)
    Student.new(name: name, img_url: url, house: house.name)
  end

end
