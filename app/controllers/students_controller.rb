class StudentsController < ApplicationController
	before_action :set_student, only: [:show, :edit, :update, :destroy]


	def index
		@students = Student.all
	end



	def new
		@student = Student.new
		@schools = Hash.new([])
		@schools["Barnard College"] = "ff-barnard-college"
		@schools["Dartmouth College"] = "ff-dartmouth-college"
		@schools["Georgetown University"] = "ff-georgetown-university"
		@schools["Harvard University"] = "ff-harvard-university"
		@schools["Standford University"] = "ff-standford-university"
		@schools["University of Georgia"] = "ff-university-of-georgia"
		@schools["University of Michigan"] = "ff-university-of-michigan"
		@schools["University of Southern California"] = "ff-university-of-southern-california"
		@schools["University of Virginia"] = "ff-university-of-virginia"
		@schools["Yale University"] = "ff-yale-university"
	end



	def create
		@student = Student.create(student_params)

		redirect_to students_path
	end



	def show
	end



	def edit
		@schools = Hash.new([])
		@schools["Barnard College"] = "ff-barnard-college"
		@schools["Dartmouth College"] = "ff-dartmouth-college"
		@schools["Georgetown University"] = "ff-georgetown-university"
		@schools["Harvard University"] = "ff-harvard-university"
		@schools["Standford University"] = "ff-standford-university"
		@schools["University of Georgia"] = "ff-university-of-georgia"
		@schools["University of Michigan"] = "ff-university-of-michigan"
		@schools["University of Southern California"] = "ff-university-of-southern-california"
		@schools["University of Virginia"] = "ff-university-of-virginia"
		@schools["Yale University"] = "ff-yale-university"
	end



	def update
		respond_to do |format|
    	if @student.update(student_params)
        	format.html { redirect_to @student, notice: 'Student was successfully updated.' }
        else
        	format.html { render :edit }
      	end
    	end
		
	end



	def destroy
		@student.destroy

		redirect_to :back
	end



	def featured
		@students = Student.all
	end




	private

	def set_student
		@student = Student.find(params[:id])
	end


	def student_params
		params.require(:student).permit(:first_name, :last_name, :school, :year, :major, :email, :github, :about, :quote, :project_id, :pic)
	end


end