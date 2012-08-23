class LinesController < ApplicationController

	def index
		@lines = TrainLine.all
	end

	def new
	end

	def create
		@line = TrainLine.new
		@line.name = params[:name]
		@line.frequency = params[:frequency]
		# would params[frequency] <= no colon work?
		@line.save
		redirect_to 'http://localhost:3000/lines'
	end

	def show
		line_id = params[:id]
		@line = TrainLine.find_by_id(line_id)
	end

	def edit
		line_id = params[:id]
		@line = TrainLine.find_by_id(line_id)
	end

	def update	
		# NOT understanding everything happening here in the update action.
		line_id = params[:id]
		name = params[:name]
		frequency = params[:frequency]
	
		@line = TrainLine.find_by_id(line_id)
	
		@line.name = name
		@line.frequency = frequency
		@line.save
	
		redirect_to 'http://localhost:3000/lines/#{@line.id}'
	end
	
	def destroy
		line_id = params[:id]
		@line = TrainLine.find_by_id(line_id)
		@line.destroy
		redirect_to 'http://localhost:3000/lines'
	end
	
end
