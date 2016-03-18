class AddTimestampsToStudents < ActiveRecord::Migration
  def change
    add_column :students, :created_at, :datetime
    add_column :students, :updated_at, :datetime
  end
end
