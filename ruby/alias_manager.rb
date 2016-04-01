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
  #once user is done, print each new name/codename pair
  secret_agents.each do |name, codename|
    puts "#{name} is now known as #{codename}."
  end
else

#downcase and reverse first and last name and save in new codename variable
codename = name.downcase.split(" ").reverse.join(" ")

#split name into array so we can change each letter one at a time
codename = codename.split("")

#note: first I kept the mid-name capitalized letters capitalized (like the D in McDorman: D => F)
#but decided only capitalizing the first letter of the new codename provided better anonymity
#so I'm downcasing everything from the start and will capitalize the new codename at the end

#declare vowel and consonant arrays to compare letters to
vowels = ["a", "e", "i", "o", "u"]
consonants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]

#iterate through each object in name and replace with the next in one line
codename.map! do |letter|
  #if space, keep space
  if letter == " "
    letter = " "
  #if edgecase, return the correct letter
  elsif letter == "z"
    letter = "b"
  elsif letter == "u"
    letter = "a"
  #if vowel, replace with next vowel
  elsif vowels.include?(letter)
    letter = vowels[vowels.index(letter)+1]
  #if consonant, replace with next consonant
  elsif consonants.include?(letter)
    letter = consonants[consonants.index(letter)+1]
end
end

#combine array of changed objects into string
codename = codename.join
#split string into array at space between first/last name
codename = codename.split(" ")
#capitalize each name
codename.map! { |name| name.capitalize }
#re-join first/last name into one string
codename = codename.join(" ")

#print agent's new codename
puts "CODENAME:"
puts codename

#add each agent's name and new codename to the hash
secret_agents[name] = codename

end
end

