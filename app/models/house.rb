class House < ActiveRecord::Base
  has_many :students
  def self.test
    House.order("RANDOM()").first.id
  end
end
