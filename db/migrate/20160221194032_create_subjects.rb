class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.string :name, null: false
      t.text :description
      t.integer :year
      t.belongs_to :professor
      t.timestamps null: false
    end
  end
end
