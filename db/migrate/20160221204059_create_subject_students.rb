class CreateSubjectStudents < ActiveRecord::Migration
  def change
    create_table :subject_students do |t|
    	t.belongs_to :subject, index: true
    	t.belongs_to :student, index: true
    	t.datetime :exam_date
    	t.integer :mark
    	t.boolean :passed
        t.timestamps null: false
    end
  end
end
