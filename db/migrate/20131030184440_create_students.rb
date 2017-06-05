class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name, null: false
      t.string :img_url
      t.timestamps :date_written
      t.references :house, null: false, index: true, foreign_key: true
    end
  end
end
