# - Write a method with a loop inside of it
# - Loop through each letter of the string, use .next to change each one to the following letter
# - Add one to the index to continue to the next letter until you hit the last letter of the string
# - Print the final string


def encrypt(string)
  index = 0
  while index < string.length
    if string[index] == "z"
      string[index] = "a"
    elsif ('a'..'y').include?(string[index])
      string[index] = string[index].next
    end
    index += 1
  end
  return string
end

encrypt("abc")


# - Write a method with a loop inside of it
# - Loop through each letter of the string
# - Match each letter to the same letter in the alphabet string
# - Get the index number for that letter in the alphabet, and subtract one
# - Match the new index number to the corresponding letter
# - Print the final string

def decrypt(string)
  index = 0
  alphabet = "abcdefghijklmnopqrstuvwxyz"
    while index < string.length
      string[index] = alphabet[alphabet.index(string[index])-1]
      index += 1
    end
    string
    puts string
end

decrypt("bcd")

decrypt(encrypt("The duck flies at midnight"))


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