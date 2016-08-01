class CreateStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :students do |t|
      t.string :name, null: false
      t.string :img_url
      t.references :house, null: false, index:true

      t.timestamps
    end
  end
end
