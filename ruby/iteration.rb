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

ages = [27, 21, 25, 18, 19]

favorite_color = {
  mandy: "gray",
  kyrene: "red",
  bobby: "green",
  cindy: "pink",
  alex: "purple"
}

#Demonstrate that you can iterate through each one using .each, and then using .map!:

#array each:
p "Before .each change:"
p ages

ages.each { |age| p age = age.next }

p "After .each change:"
p ages

#hash each:
p "Before .each change:"
p favorite_color

favorite_color.each do |name, color|
  p color = color.upcase
end

p "After .each change:"
p favorite_color

#array map!:
p "Before .map! change:"
p ages

ages.map! { |age| p age = age.next }

p "After .map! change:"
p ages

#A method that iterates through the items, deleting any that meet a certain condition
#(for example, deleting any numbers that are less than 5).

#array:
p ages.delete_if { |age| age < 20 }

#hash:
p favorite_color.delete_if { |name, color| color.length < 4 }

#A method that filters a data structure for only items that do satisfy a certain condition
#(for example, keeping any numbers that are less than 5).

#array:
p ages.select { |age| age < 20 }

#hash:
p favorite_color.reject { |name,color| color == "red"}

#A different method that filters a data structure for only items satisfying a certain condition

# array:
p favorite_color.has_key?(:alex)
p ages.values_at(1, 3, 4)

#hash:
p favorite_color.rassoc("gray")

#A method that will remove items from a data structure until the condition in the block evaluates to false, then stops

#array:
p ages.keep_if { |age| age > 20 }

#hash:
p favorite_color.keep_if { |name, color| color == "green" }

