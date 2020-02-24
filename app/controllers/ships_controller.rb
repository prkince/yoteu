class ShipsController < ApplicationController
	skip_before_action :authenticate_user!, :only => [:index, :show]
  	before_action :set_ship, only: [:show, :edit, :update, :destroy]

	def index
	  @ships = Ship.all
	end

	def show
	end

	def new           # GET /ships/new
		@ship = Ship.new
		@categories = Category.all
	end

	def create        # POST /ships
		@ship = Ship.new(ship_params)
		@categories = Category.all
		@ship.category_id = @categories.first.id
		if @ship.save
			redirect_to ship_path(@ship)
		else
			flash[:notice] = "Check the details!"
			render :new
		end 
	end

	def edit          # GET /ships/:id/edit
	end

	def update        # PATCH /ships/:id
	 	@ship.update(ship_params)
	 	redirect_to ship_path(@ship)
	end

	def destroy       # DELETE /ships/:id
	    @ship.destroy
	    redirect_to ships_path
	end

	private

	def set_ship
		@ship = Ship.find(params[:id])
	end

	def ship_params
		# *Strong params*: You need to *whitelist* what can be updated by the user
		# Never trust user data!
		params.require(:ship).permit(:name, :description, :dimension, :photo_url, :detail, :quantity, :price)
	end

end