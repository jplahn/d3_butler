class VisualizationsController < ApplicationController

	def index
		@visualizations = Visualization.all
	end
end
