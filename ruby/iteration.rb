 #Write your own method that takes a block

 def say_hello
   x = "Mandy"
   y = "Kyrene"
   puts "Before block"
   yield(x, y)
   puts "After block"
 end

say_hello { |x, y| puts "Hi #{x} and #{y}!" }

#Declare an array and a hash, and populate each of them with some data

favorite_color = {
  mandy: "gray",
  kyrene: "red",
  bobby: "green",
  cindy: "pink",
  alex: "purple"
}

ages = [27, 21, 25, 18, 19]

#Demonstrate that you can iterate through each one using .each, and then using .map!:

p "Before .each change:"
p favorite_color

p favorite_color.each do |name, color|
  color = color.upcase
end

p "After .each change:"
p favorite_color

p "Before .each change:"
p ages

ages.each { |age| age = age.next }

p "After .each change:"
p ages

p "Before .map! change:"
p ages

ages.map! { |age| age = age.next }

p "After .map! change:"
p ages


