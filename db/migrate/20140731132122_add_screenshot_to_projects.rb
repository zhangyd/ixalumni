class AddScreenshotToProjects < ActiveRecord::Migration
  def change
  	add_attachment :projects, :screenshot
  end
end
