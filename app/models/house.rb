class House < ActiveRecord::Base
  has_many :students
  validates :name, presence: true, uniqueness: true

  def enrollment(id)
    return Student.where(house_id: id)
  end

  def self.sortingHat
    return House.order("RANDOM()").first
  end

end
