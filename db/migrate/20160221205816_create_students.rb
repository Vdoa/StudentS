class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
    	t.string :name
    	t.integer :Year
    	t.string :town

      t.timestamps null: false
    end
  end
end
