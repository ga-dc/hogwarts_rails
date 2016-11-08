class Student < ActiveRecord::Base
  belongs_to :house

  def self.test
    House.order("RANDOM()").first.id
  end

end
