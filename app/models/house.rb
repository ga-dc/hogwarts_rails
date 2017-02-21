class House < ActiveRecord::Base
  has_many :students, dependent: :destroy
end
