#create empty hash to store agent names in as we get them
secret_agents = Hash.new

#begin name-retrieval loop, run until user enters "quit"
name = ""
until name == "quit"

#get agent name and store in name variable
puts "ENTER AGENT NAME (when finished, enter 'quit'):"
name = gets.chomp

#end loop if user enters "quit"
if name  == "quit"
  secret_agents.each do |name, codename|
    puts "#{name} is now known as #{codename}."
  end
else

#reverse first and last name
codename = name.split(" ").reverse.join(" ")
codename = codename.split("")

#declare vowels and consonants arrays
vowels = ["a", "e", "i", "o", "u"]
consonants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
up_vowels = ["A", "E", "I", "O", "U"]
up_consonants = ["B", "C", "D", "F", "G", "H", "J", "K", "L", "M", "N", "P", "Q", "R", "S", "T", "V", "W", "X", "Y", "Z"]

#iterate through each letter and replace with the next in one line
codename.map! do |letter|
  #if space, keep space
  if letter == " "
    letter = " "
  #if edgecase, return correct letter (for both up- and down-case)
  elsif letter == "z"
    letter = "b"
  elsif letter == "u"
    letter = "a"
  elsif letter == "Z"
    letter = "B"
  elsif letter == "U"
    letter = "A"
  #if vowel, replace with next vowel (remaining up- or down-case)
  elsif vowels.include?(letter)
    letter = vowels[vowels.index(letter)+1]
  elsif consonants.include?(letter)
    letter = consonants[consonants.index(letter)+1]
  #if consonant, replace with next consonant (remaining up- or down-case)
  elsif up_vowels.include?(letter)
    letter = up_vowels[up_vowels.index(letter)+1]
  elsif up_consonants.include?(letter)
    letter = up_consonants[up_consonants.index(letter)+1]
end
end

#print agent's new codename
puts "CODENAME:"
puts codename.join

#add each new agent's name and codename to the hash
secret_agents[name] = codename.join

end
end















