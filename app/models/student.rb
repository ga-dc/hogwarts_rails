class Student < ActiveRecord::Base
  belongs_to :house

  def house(id)
    return House.find(id.to_i).name
  end

  def reSort(id = nil)
    current = self.house_id.to_i
    enrollment = Student.group(:house_id).count
    houses = House.uniq.pluck(:id)
    houses.each{|id|
      enrollment[id] ||= 0 if houses.include?(id)
    }
    houses = enrollment.sort_by{|k,v| v}
    output = houses[0][0].to_i
    output = houses[1][0].to_i if output == current
    return output
  end

end
