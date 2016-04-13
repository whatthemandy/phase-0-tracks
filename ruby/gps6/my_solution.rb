# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# require_relative loads the data from another file (here it's 'state_data')
# and acts as though the contents of that file were written in the current file.
# relative means the filename given is its location to the current file
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



