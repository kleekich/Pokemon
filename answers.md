# Q0: Why is this error being thrown?


# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? 
As I run rake db:seed, there were random pokemons such as Charmender, Pikachu, etc,. appeared in random order.


# Question 2a: What does the following line in the help text do? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.

It passes the that spacific pokemon's id to be used in capture method of pokemons controller.

# Question 3: What would you name your own Pokemon?
Yppi: My girlfirend's puppy

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?

I put redirect_to trainer_path(id: current_trainer.id). The path needs id of the trainer we are currently viewing. 

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.

# Give us feedback on the project and decal below!

# Extra credit: Link your Heroku deployed app
