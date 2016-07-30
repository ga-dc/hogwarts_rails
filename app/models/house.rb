class House < ApplicationRecord
  has_many :students, dependent: :destroy
end
