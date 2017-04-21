class CreateStudents < ActiveRecord::Migration
    def change
        create_table :students do |t|
            t.string :name
            t.string :img_url
            t.references :house, index: true, foreign_key: true
            t.timestamps
        end
    end
end
