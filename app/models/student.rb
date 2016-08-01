class Student < ActiveRecord::Base
  belongs_to :house, :foreign_key => :house_id
end
