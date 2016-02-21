class CreateProfessors < ActiveRecord::Migration
  def change
    create_table :professors do |t|
    	t.string :name
    	t.text :description
    	t.timestamps null: false
    end
  end
end
