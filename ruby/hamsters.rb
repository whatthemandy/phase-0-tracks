puts "What is the hamster's name?"
  name = gets.chomp

puts "How noisy is the hamster on a scale of 1-10?"
  noisy = gets.chomp
  noisy = noisy.to_i

puts "What color is the hamster's fur?"
  color = gets.chomp

puts "True or False?: The hamster a good candidate for adoption."
  input = gets.chomp

  if input=="true"
      adoption=true
  elsif input=="false"
      adoption=false
  else adoption=nil
  end

puts "How many years old do you estimate the hamster is?"
  age = gets.chomp

  if age == ""
  age = nil
  end

# I think this would be good to convert to a float, but when I use age=age.to_f, a blank answer shows as 0.0 instead of nil.


puts "Hamster Details:"
puts "Name: #{name}."
puts "Noise-level: #{noisy}/10."
puts "Fur color: #{color}."
puts "Good candidate for adoption: #{adoption}"
puts "Estimated age: #{age} years old."
