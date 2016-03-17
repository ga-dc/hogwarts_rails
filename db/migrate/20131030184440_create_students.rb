class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name, null: false
      t.string :img_url
      t.references :house, null: false, index:true

      t.timestamps
    end
  end
end
