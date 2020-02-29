class CategoriesController < ApplicationController

	skip_before_action :authenticate_user!, :only => [:index, :show]

	def index
		@category_ships = Category.all
	end 

	def show
		@category = Category.find(params[:id])
		@number = rand(1..3);
 	end

end
