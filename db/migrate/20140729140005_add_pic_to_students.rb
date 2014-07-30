class AddPicToStudents < ActiveRecord::Migration
  def change
  	add_attachment :students, :pic
  end
end
