puts "What is the hamster's name?"
  name = gets.chomp

puts "How noisy is the hamster on a scale of 1-10?"
  noisy = gets.chomp
  noisy.to_i

puts "What color is the hamster's fur?"
  color = gets.chomp

puts "Is the hamster a good candidate for adoption? (true/false)"
  adoption = gets.chomp

puts "How many years old do you estimate the hamster is?"
  age = gets.chomp
  age.to_i

if age == " "
age = nil
end


puts "The hamster's name is: #{name}."
puts "The hamster's noise-level is: #{noisy} out of 10."
puts "The hamster's color is: #{color}."
puts "The hamster is a good candidate for adoption: #{adoption}"
puts "The hamster's age is: #{age} years old."
