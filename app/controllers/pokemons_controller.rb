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
		@pokemon = Pokemon.find(params[:id])
		@pokemon.trainer_id = current_trainer.id
		Pokemon.save
		redirect_to root_path

	end

end