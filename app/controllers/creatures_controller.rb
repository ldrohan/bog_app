class CreaturesController < ApplicationController
	def index
		@creatures = Creature.all
		render :index
	end

	def new
		render :new
	end	

	def create
		creature = params.require(:creatures).permit(:name, :kind, :description)
		Creature.create(creature)
		redirect_to "/creatures"
	end

# 	 def edit
# 	 	creature_id = params[:id]
# 	 	@creatures = Creature.find(creature_id)
# 	 	render :edit
# 	 end	
 end	