class LinesController < ApplicationController

	def index
		@lines = TrainLine.all
		
		respond_to do |format|
			format.html
			format.json { render :json => @line }		# Q: What does this json stuff do?
		end
	end

	def new
		@line = TrainLine.new
	end

	def create
		@line = TrainLine.create(params[:train_line])
				
		if @line.save
			redirect_to train_line_url(@line), :notice => "Successfully saved!"
		else
			flash[:notice] = "Something WdendT WROonj!!!...."
			render 'new' # HOW are we rendering 'new' and what is 'new'?
		end
	end

	def show
		@line = TrainLine.find_by_id(params[:id])
		respond_to do |format|
			format.html
			format.json { render :json => @line }  # Q: What does this json stuff do?
		end
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
		
		if @line.update_attributes(params[:train_line])
			redirect_to train_line_url(@line.id)
		else
			flash[:notice] = "Something went horribly wrong, maybe you didn't enter a value into a field."
			render 'edit'
			# It's confusing how "flash" seems to be an action, 
      # yet it comes prior to the object it's acting on
      # (a notice of 'Something...wrong')...Am I thinking about
      # it accurately?
		end		
	end
	
	def destroy
		# @line = TrainLine.find_by_id(params[:id])
		# @line.destroy
		TrainLine.find_by_id(params[:id]).destroy
		redirect_to train_lines_url
	end
	
end
