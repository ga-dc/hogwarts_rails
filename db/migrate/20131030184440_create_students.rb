class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name, null: false
      t.string :img_url
      t.datetime :created_on
      t.references :house, null: false, index: true
    end
  end
end
