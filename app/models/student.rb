class Student < ActiveRecord::Base
  belongs_to :house

def sorter
  self.house = House.all.sample
end

end
