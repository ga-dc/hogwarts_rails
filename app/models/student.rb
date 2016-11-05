class Student < ActiveRecord::Base
  belongs_to :house
  before_create :generate_house

  private
  def generate_house
    self.house_id = rand(1..4).to_i
  end

end
