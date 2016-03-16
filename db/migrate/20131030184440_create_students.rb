class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.string :img_url
      t.references :house, null: false, index: true
      t.timestamps
    end
  end
end
