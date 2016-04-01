#get agent name and store in name variable
puts "What's your name?"
name = gets.chomp

#reverse first and last name
name = name.split(" ").reverse.join(" ")

#declare vowels and consonants arrays
vowels = ["a", "e", "i", "o", "u"]
consonants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]


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
  elsif vowels.include?(letter)
    letter = vowels[vowels.index(letter)+1]
  elsif consonants.include?(letter)
    letter = consonants[consonants.index(letter)+1]
end
end

p name.join