class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
    	t.string :first_name
    	t.string :last_name
    	t.string :school
    	t.string :year
    	t.string :major
    	t.string :email
    	t.string :github
    	t.text :about
    	t.text :quote
    	t.integer :project_id

    	t.timestamps

    end
  end
end
