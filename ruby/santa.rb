class Santa
  #declare readable/writable attributes
  attr_reader :reindeer_ranking
  attr_accessor :gender, :ethnicity

  def initialize(gender, ethnicity)
    puts "Initializing Santa instance ..."
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
genders = ["androgynous", "male", "non-binary", "bowie", "female"]
ethnicities = ["black", "alaska native", "white", "N/A", "korean"]

# initialize new santas with the gender and ethnicity array info
genders.length.times do |i|
  santas << Santa.new(genders[i], ethnicities[i])
end

# p santas

#create new santa instance, test attribute-changing and getter methods
# santa = Santa.new("male", "white")
# santa.celebrate_birthday
# santa.get_mad_at("Rudolph")
# santa.gender
# santa.ethnicity
# santa

#create new santa instance, test attr_reader and attr_accessor
santa = Santa.new("male", "white")
santa.celebrate_birthday
santa.get_mad_at("Rudolph")
p santa.gender = "female"
p santa.ethnicity = "black"
p santa.reindeer_ranking
santa


