# Virus Predictor

# I worked on this challenge with: Kyrene Jackson.
# We spent 1.75 hours on this challenge (and I worked on it for an additional hour later).

# EXPLANATION OF require_relative
# require_relative loads the data from another file (here it's 'state_data')
# and acts as though the contents of that file were written in the current file.
# relative means the filename given is its location relative to the current file
# (whereas just 'require' would need to give the full file path).

require_relative 'state_data'

class VirusPredictor
  # on each new instance of the class, the initialize method runs and accepts 3 arguments
  # and assigns them to the values of each instance variable for each new instance
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # takes state data from hash and passes it to the predicted_deaths and
  # speed_of_spread methods and prints out the results from each
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

  # takes population_density, population, and state values from hash as arguments
  # and based on population_density, calculates the number_of_deaths and converts the
  # value to the nearest integer (in case the result is a float)
  def predicted_deaths
    # predicted deaths is solely based on population density
    case @population_density
      when @population_density >= 200
        number_of_deaths = (@population * 0.4).floor
      when @population_density >= 150
        number_of_deaths = (@population * 0.3).floor
      when @population_density >= 100
        number_of_deaths = (@population * 0.2).floor
      when @population_density >= 50
        number_of_deaths = (@population * 0.1).floor
      else
        number_of_deaths = (@population * 0.05).floor
    end
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"
  end

  # takes population_density and state values and based on population_density
  # calculates the speed of the spread of the disease
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0
    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end
    puts " and will spread across the state in #{speed} months.\n\n"
  end
end

# Refactor - combine predicted_deaths and speed_of_spread:
# (have to remove individual methods and line 27 for it to work)

  # def predicted_deaths
  #   #number_of_deaths = @population
  #   speed = 0
  #   if @population_density >= 200
  #     number_of_deaths = (@population * 0.4).floor
  #     speed += 0.5
  #   elsif @population_density >= 150
  #     number_of_deaths = (@population * 0.3).floor
  #     speed += 1
  #   elsif @population_density >= 100
  #     number_of_deaths = (@population * 0.2).floor
  #     speed += 1.5
  #   elsif @population_density >= 50
  #     number_of_deaths = (@population * 0.1).floor
  #     speed += 2
  #   else
  #     number_of_deaths = (@population * 0.05).floor
  #     speed += 2.5
  #   end
  #   puts "#{@state} will lose #{number_of_deaths} people in this outbreak and will spread across the state in #{speed} months.\n\n"
  # end


#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each do |state, data|
  each_state = VirusPredictor.new(state, data[:population_density], data[:population])
  each_state.virus_effects
end

# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section

# What are the differences between the two different hash syntaxes shown in the state_data file?
## The "main" hash uses strings for as keys (state names) and uses the shovel to assign the
## value data (which is another hash).  The nested hash uses symbols as keys and the shortened
## symbol assignment for the values, which is a colon instead of the hash rocket.

# What does require_relative do? How is it different from require?
## Require_relative loads the data from another file and acts as though the contents of that file ## were written in the current file.  'Relative' means the filename given is its location relative
## to the current file, whereas just 'require' would need to give the full file path.

# What are some ways to iterate through a hash?
## You can iterate through a hash with each - through all the info or just the keys/values:
## hash.each { |key, value| do something }
## hash.each_key { |key| do something with keys }
## hash.each_value { |value| do something with values }

# When refactoring virus_effects, what stood out to you about the variables, if anything?
## The variables are instance variables, meaning they are accessible throughout the whole
## class, and they don't need to be passed in to the methods since the methods already know
## what they are for each instance of the class.

# What concept did you most solidify in this challenge?
## The refactoring of the methods really helped me understand the scope of the instance variables.
## I don't know if I would have figured out on my own that they didn't need to be passed in as
## arguments, but my partner figured it out so now I know!

