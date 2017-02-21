class House < ActiveRecord
  has_many :students, dependent: :destroy 
end
