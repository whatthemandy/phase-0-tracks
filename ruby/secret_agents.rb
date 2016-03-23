# - get a string
# - Write a method with a loop inside of it
# - Loop through each letter of the string, using .next for each one
# - At the end, print the final string#


def encrypt(string)
  index = 0
    while index < string.length
      string[index] = string[index].next
      index += 1
    end
    string
    #p string
end

encrypt("abc")


# - Get a string
# - write a method with a loop inside of it
# - Loop through each letter of the string
# - Match each letter to the same letter in the alphabet
# - get the index number for that letter in the alphabet, and and subtract one
# - Match the new index number to the corresponding letter
# - At the end, print the final string

def decrypt(string)
  index = 0
  alphabet = "abcdefghijklmnopqrstuvwxyz"
    while index < string.length
      string[index] = alphabet[alphabet.index(string[index])-1]
      index += 1
    end
    string
    # p string
end

decrypt("bcd")

decrypt(encrypt("The duck flies at midnight"))


puts "Would you like to decrypt or encrypt a password?"
  method = gets.chomp

puts "Enter a password."
  string = gets.chomp

if method==decrypt
  decrypt(string)
elsif encrypt(string)
  else puts "Try again"
end

puts string

