# Write a method with a loop inside of it
# Loop through each letter of the string, use .next to change each one to the following letter
# Add one to the index to continue to the next letter until you hit the last letter of the string
# Print the final string

def encrypt(string)
  index = 0
  while index < string.length
    if string[index] == "z"
      string[index] = "a"
    elsif string[index] == " "
      string[index] = " "
    else string[index] = string[index].next
    end
    index += 1
  end
  #p string
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
    if string[index] == " "
      string[index] = " "
    else
      string[index] = alphabet[alphabet.index(string[index].downcase)-1]
    end
    index += 1
  end
  #p string
end

decrypt("bcd")
decrypt("afe")

#p decrypt(encrypt("The duck flies at midnight"))

#This nested call did not work at first because capital letters and spaces were not accounted for.  Now I have added conditional statements that specifies what it should do with spaces, and a rule to downcase each letter so that uppercase letters don't break it.  This does not re-caitalize the first letter, but I understand how this method works better than the previous method I had committed, so I am choosing to use this instead.

#Ask user whether they would like to encrypt or decrypt a password and store their answer in a variable (called method)
#Ask user to enter a password and store it in a variable (called password)
#Create if/else that runs whichever method the user prefers, and print their encrypted or decrypted password.

puts "Would you like to decrypt or encrypt a password?"
method = gets.chomp

puts "Enter a password."
password = gets.chomp

if method == "decrypt" || method == "d"
  decrypt(password)
elsif method == "encrypt" || method == "e"
  encrypt(password)
else
  puts "Try again"
end

p password