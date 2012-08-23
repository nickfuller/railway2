class LinesController < ApplicationController

	def index
		@lines = TrainLine.all
	end

	def new
		@line = TrainLine.new
	end

	def create
		@line = TrainLine.create(params[:train_line])
		redirect_to train_lines_url
	end

	def show
		@line = TrainLine.find_by_id(params[:id])
	end

	def edit
		@line = TrainLine.find_by_id(params[:id])
	end

	def update	
		# NOT understanding everything happening here in the update action.
		# 	line_id = params[:id]
		# 	name = params[:train_line][:name]
		# 	frequency = params[:train_line][:frequency]
		# 
		# 	@line = TrainLine.find_by_id(line_id)
		# 
		# 	@line.name = name
		# 	@line.frequency = frequency
		# 	@line.save
		
		@line = TrainLine.find_by_id(params[:id])
		@line.update_attributes(params[:train_line])
	
		redirect_to train_line_url(@line.id)
	end
	
	def destroy
		@line = TrainLine.find_by_id(params[:id])
		@line.destroy
		redirect_to train_lines_url
	end
	
end
