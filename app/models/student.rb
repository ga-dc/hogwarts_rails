class Student < ActiveRecord::Base
  belongs_to :house
end

def house_sort
  houses = ["1", "2", "3", "4"]
  x = houses.shuffle
  y = x.pop

end
