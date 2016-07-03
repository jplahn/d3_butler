class InputsController < ApplicationController
	def index
	  @input = Input.new
	end

	def new
	  @input = Input.new
	end

	def create
	  @input = Input.new(params[:file])

	  if @input.save
	  	redirect_to inputs_path, notice: "Data uploaded"
	  else
	  	render "new"
	  end
	end

end
