class ProjectsController < ApplicationController
	before_action :set_project, only: [:show, :edit, :update, :destroy]

	def index
		@projects = Project.all
	end



	def new
		@project = Project.new
	end



	def create
		@project = Project.create(project_params)
		redirect_to projects_path
	end



	def show		
	end



	def edit	
	end




	def update
		respond_to do |format|
    	if @project.update(project_params)
        	format.html { redirect_to @project, notice: 'Project was successfully updated.' }
        else
        	format.html { render :edit }
      	end
    	end
	end



	def destroy
		@project.destroy

		redirect_to :back
	end



	private

	def set_project
		@project = Project.find(params[:id])
	end

	def project_params
		params.require(:project).permit(:name, :url, :description, :screenshot)
	end


end