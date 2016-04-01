#get agent name and store in name variable
puts "What's your name?"
name = gets.chomp

#reverse first and last name
name = name.split(" ").reverse.join(" ")

#declare vowels and consonants arrays
vowels = ["a", "e", "i", "o", "u"]
consonants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
up_vowels = ["A", "E", "I", "O", "U"]
up_consonants = ["B", "C", "D", "F", "G", "H", "J", "K", "L", "M", "N", "P", "Q", "R", "S", "T", "V", "W", "X", "Y", "Z"]

#iterate through each letter
#if space, keep space
#if vowel, replace with next vowel
#if consonant, replace with next consonant

name.map! do |letter|
  if letter == " "
    letter = " "
  elsif letter == "z"
    letter = "b"
  elsif letter == "u"
    letter = "a"
  elsif letter == "Z"
    letter = "B"
  elsif letter == "U"
    letter = "A"
  elsif vowels.include?(letter)
    letter = vowels[vowels.index(letter)+1]
  elsif consonants.include?(letter)
    letter = consonants[consonants.index(letter)+1]
  elsif up_vowels.include?(letter)
    letter = up_vowels[up_vowels.index(letter)+1]
  elsif up_consonants.include?(letter)
    letter = up_consonants[up_consonants.index(letter)+1]
end
end

p name.join

