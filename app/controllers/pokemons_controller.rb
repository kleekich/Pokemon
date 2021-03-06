class PokemonsController < ApplicationController
=begin 
Grab the id of the Pokemon from the parameters and set that Pokemon's trainer to be the current trainer logged in.
What's great about Devise (the user authentication gem we already have set up) is that it predefines a method to
 give us the current user logged in - or in this case, current trainer. To grab the current trainer, use current_trainer. 
 You can use this in controllers and views.
Don't forget to save the changes to the Pokemon!!!
Redirect to the home page
=end 
	
	def capture
		pokemon = Pokemon.find(params[:id])
		pokemon.trainer_id = current_trainer.id
		pokemon.save
		redirect_to root_path

	end

	def damage
		pokemon = Pokemon.find(params[:id])
		pokemon.health -= 10
		if pokemon.health <=0
			pokemon.destroy
         redirect_to trainer_path(id: current_trainer.id)
		end
		pokemon.save
		redirect_to trainer_path(id: current_trainer.id)
    end

    def new
		@pokemon = Pokemon.new
      	render "new"
   		
    end

    def create
   		if Pokemon.new(name: params[:pokemon][:name], trainer_id: current_trainer.id).valid?
       		pokemon = Pokemon.new(name: params[:pokemon][:name], trainer_id: current_trainer.id)
   	  		pokemon.save
   	   		redirect_to trainer_path(id: current_trainer.id)
   	 	else
   			@pokemon = Pokemon.new(name: params[:pokemon][:name], trainer_id: current_trainer.id)
   			flash[:error] = @pokemon.errors.full_messages.to_sentence << "Error: Duplicate Name or No Name"
 	  		redirect_to new_path

   	 	end
    end


    def user_params
  		params.require(:pokemon).permit(:name)
   	end
	
end
