#get agent name and store in name variable
puts "What's your name?"
name = gets.chomp

#reverse first and last name
name = name.split(" ").reverse.join(" ")

#declare vowels and consonants strings
vowels = "aeiou"
consonants = "bcdfghjklmnpqrstvwxyz"

p name.split

