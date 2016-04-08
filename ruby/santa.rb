# create santa class
class Santa
  # declare readable/writable attributes
  attr_reader :reindeer_ranking
  attr_accessor :gender, :ethnicity, :age

  def initialize(gender, ethnicity)
    # puts "Initializing Santa instance ..."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type}!"
  end

  #attribute-changing methods
  def celebrate_birthday
    @age += 1
  end

  def get_mad_at(reindeer)
    @reindeer_ranking.delete(reindeer)
    @reindeer_ranking.insert(-1, reindeer)
  end

  #getter methods
  def gender
    @gender
  end

  def ethnicity
    @ethnicity
  end
end

# nick = Santa.new
# nick.speak
# nick.eat_milk_and_cookies

# create empty array for santa info
santas = []

# declare some genders and ethnicities
genders = ["Androgynous", "Male", "Non-binary", "Bowie", "Female"]
ethnicities = ["Black", "Alaska Native", "White", "N/A", "Scottish"]

# initialize new santas with the gender and ethnicity array info
genders.length.times do |i|
  santas << Santa.new(genders[i], ethnicities[i])
end

# p santas

# create new santa instance, test attribute-changing and getter methods
# nick = Santa.new("male", "white")
# p nick.age
# p nick.celebrate_birthday
# p nick.reindeer_ranking
# p nick.get_mad_at("Rudolph")
# p nick.gender
# p nick.ethnicity
# p nick

# create new santa instance, test attr_reader and attr_accessor
# nicky = Santa.new("male", "white")
# p nicky
# nicky.celebrate_birthday
# nicky.get_mad_at("Rudolph")
# nicky.gender = "female"
# nicky.ethnicity = "black"
# p nicky


# declare some genders and ethnicities
genders = ["Agender", "Female", "Bigender", "Male", "Gender Fluid", "N/A", "Androgynous", "Non-binary", "Bowie", "Who cares"]
ethnicities = ["Black", "Latino", "White", "Japanese-African", "Prefer not to say", "Mystical Creature (unicorn)", "N/A", "Scottish", "Alaska Native", "Khmer"]

# initialize 100 new santas with the gender and ethnicity array info
# give each santa a random gender, ethnicity, and age (1-140)
# print out the attributes of each santa in a nicely readable way
100.times do |i|
  random_santa = Santa.new(genders.sample, ethnicities.sample)
  random_santa.age = rand(0..140)
  random_santa.reindeer_ranking = random_santa.reindeer_ranking.shuffle
  puts "Santa #{i+1}:"
  puts "  Age: #{random_santa.age}"
  puts "  Gender: #{random_santa.gender}"
  puts "  Ethnicity: #{random_santa.ethnicity}"
  puts "  Reindeer Ranking: #{random_santa.reindeer_ranking}"
  puts
end







