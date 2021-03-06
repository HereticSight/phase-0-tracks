# Virus Predictor

# I worked on this challenge [with: Caitlin Chai].
# We spent [2] hours on this challenge.

# EXPLANATION OF require_relative
# require_relative allows you to load a file that is located in a relative path to the current file.
#require_relative makes the data in the specified file available in the file that require_relative is called.
#require_relative differs from require in that it has a local scope, while require has more of a global scope and lets you access remote ruby libraries.

require_relative 'state_data'

class VirusPredictor
  attr_reader :state
  attr_accessor :population, :population_density
  #whenever a new instance is created, 3 arguments are taken and assigned to attributes. 
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
  # calls the predicted_deaths and speed_of_spread methods. 
  # predicted_deaths is called using the population_density, population, and state attributes as arguments. 
  # speed_of_spread is called using the population_density and state attributes as arguments.
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

  # Using population_density attribute determines the number of deaths by multiplying the population by a specified float, and rounding down to the nearest integer.
  # Prints a statement of how many deaths will occur within the specified state.
  def predicted_deaths

    number_of_deaths = (population * 0.05).floor
    
    4.times do |i|
      if population_density >= 50*(i+1)
        number_of_deaths = (population * 0.1*(i+1)).floor
      end
    end
    print "#{state} will lose #{number_of_deaths} people in this outbreak"

  end
  # Uses population density as a condition to determine what the speed of spread will be, and changes the speed by a certain integer or float.
  # prints a line that says what the speed of spread will be.
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 2.5

    4.times do |i|
      if population_density >= 50*(i+1)
        speed -= 0.5
      end
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects


# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects


# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects


# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


STATE_DATA.each do |state, data|
  predict = VirusPredictor.new(state,data[:population_density], data[:population])
  predict.virus_effects
end

#=======================================================================
# Reflection Section
# What are the differences between the two different hash syntaxes shown in the state_data file?
  # The two different syntaxes for hash are "key => value" and "key: value". The first way allows you to add a value to a string, or a symbol. The second way creates a symbol with the key and assigns the value.
# What does require_relative do? How is it different from require?
  # require_relative allows you to load a file that is located in a relative path to the current file.
  #require_relative makes the data in the specified file available in the file that require_relative is called.
  #require_relative differs from require in that it has a local scope, while require has more of a global scope and lets you access remote ruby libraries.
# What are some ways to iterate through a hash?
  # Iterating through a hash can be done using the .each and .map methods, similar to iterating through an array. The only difference is the requirement to use key and value within the block.
# When refactoring virus_effects, what stood out to you about the variables, if anything?
  # The variables were all attributes of the class. Instead of calling each attribute, I can use attr_reader and attr_accessor and call each variable. The parameters were unneeded since the attributes were all called within the method itself.
# What concept did you most solidify in this challenge?
  # I solidified refactoring within this challenge.