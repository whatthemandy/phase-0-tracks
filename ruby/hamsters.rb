puts "What is the hamster's name?"
  hamster_name = gets.chomp

puts "How noisy is the hamster? (1-10)"
  noisy = gets.chomp
  noisy.to_i

puts "What color is the hamster?"
  color = gets.chomp

puts "Is the hamster a good candidate for adoption? (y/n)"
  good_candidate = gets.chomp

puts "How many years old do you estimate the hamster is?"
  age = gets.chomp

if age == " "
age = nil
end
