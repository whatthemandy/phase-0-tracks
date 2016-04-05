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
