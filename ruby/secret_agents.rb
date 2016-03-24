# Write a method with a loop inside of it
# Loop through each letter of the string, use .next to change each one to the following letter
# Add one to the index to continue to the next letter until you hit the last letter of the string
# Print the final string

def encrypt(string)
  index = 0
  while index < string.length
    if string[index] == "z"
      string[index] = "a"
    else
      string[index] = string[index].next
    end
    index += 1
  end
  #return string
end

encrypt("abc")
encrypt("zed")

# Write a method with a loop inside of it
# Loop through each letter of the string
# Match each letter to the same letter in the alphabet string
# Get the index number for that letter in the alphabet, and subtract one
# Match the new index number to the corresponding letter
# Print the final string

def decrypt(string)
  index = 0
  alphabet = ('a'..'z').to_a
  while index < string.length
    if (alphabet).include?(string[index])
      string[index] = alphabet[alphabet.index(string[index])-1]
    end
    index += 1
  end
  #return string
end

decrypt("bcd")
decrypt("afe")

#p decrypt(encrypt("The duck flies at midnight"))

#This nested call did not work at first because capital letters and spaces were not accounted for.  Now I have added conditional statements that specifies it should run the method for letters in the alphabet, so that when a character that is not a letter in the (lowercase) alphabet, it will simply be skipped and not break the code.

#Pseudocode the next steps here...

puts "Would you like to decrypt or encrypt a password?"
method = gets.chomp

puts "Enter a password."
string = gets.chomp

if method == "decrypt" || method == "d"
  decrypt(string)
elsif method == "encrypt" || method == "e"
  encrypt(string)
else
  puts "Try again"
end

puts string