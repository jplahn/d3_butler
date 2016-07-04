class InputsController < ApplicationController
	def index
	  @inputs = Input.all
	end

	def new
	  @input = Input.new
	end

	def create
	  input = input_params[:file]
	  @data = input.read
	end

    private
      def input_params
      params.require(:input).permit(:file, :id)
    end

end
