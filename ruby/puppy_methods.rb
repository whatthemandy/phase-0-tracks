#puppy method
class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(x)
    x = x.to_i
    x.times {puts "Woof!"}
  end

  def rollover
    puts "*roll over*"
  end

  def dog_years(human_year)
    dog_year = human_year * 7
    puts "Your dog is #{dog_year} years old."
  end

  def cuddle(time)
    puts "Please cuddle with me for #{time} minutes."
  end

  def initialize
    puts "Initializing new puppy instance..."
  end

end

#test Puppy instance methods
spot = Puppy.new
spot.fetch("ball")
spot.speak(3)
spot.rollover
spot.dog_years(3)
spot.cuddle(10)


#Create Flower class with several instance methods
class Flower

  def initialize
    puts "initializing new flower instance..."
  end

  def color(color)
    puts "I am #{color}!"
  end

  def petals(beginning_num)
    final_num = beginning_num * 2
    puts "I have #{beginning_num} petals now but will one day have #{final_num}!"
  end

end
