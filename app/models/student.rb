class Student < ApplicationRecord
  belongs_to :house, :foreign_key => :house_id
end
