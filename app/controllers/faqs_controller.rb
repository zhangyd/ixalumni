class FaqsController < ApplicationController
	before_action :set_faq, only: [:show, :edit, :update, :destroy]

	def index
		@faqs = Faq.all
	end



	def new
		@faq = Faq.new
	end



	def create
		@faq = Faq.create(faq_params)

		redirect_to faqs_path
	end



	def show		
	end



	def edit	
	end




	def update
		respond_to do |format|
    	if @faq.update(faq_params)
        	format.html { redirect_to @faq, notice: 'Project was successfully updated.' }
        else
        	format.html { render :edit }
      	end
    	end
	end



	def destroy
		@faq.destroy

		redirect_to :back
	end



	private

	def set_faq
		@faq = Faq.find(params[:id])
	end

	def faq_params
		params.require(:faq).permit(:question, :answer)
	end


end