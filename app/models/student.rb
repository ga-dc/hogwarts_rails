class Student < ActiveRecord::Base
  belongs_to :house
  before_create do
    self.house_id = House.all.sample.id
  end
end




# DJ Name Idea: Business Logik
# Mixtape: Studnet initialized
