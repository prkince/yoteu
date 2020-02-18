class ShipsController < ApplicationController
	skip_before_action :authenticate_user!

	def index
	  @ships = Ship.all
	end

	def show
	  @ship = Ship.find(params[:id])
	end
end
