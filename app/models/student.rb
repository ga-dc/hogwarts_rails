class Student < ApplicationRecord
  belongs_to :house, dependent: :destroy
end
