#fix to make houses singular
class Student < ActiveRecord::Base
  belongs_to :house
end
