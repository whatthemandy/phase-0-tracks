# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
# split input into individual items
# add individual items to new hash and set default value to 1
# output: hash details

def make_list(items)
  items = items.split(" ")
  list = {}
  items.each do |item|
    list[item] = 1
  end
  return list
end

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps:
# add item and quantity to hash
# output: hash details

def add_item(list, item_name, quantity)
  list[item_name] = quantity
end

# Method to remove an item from the list
# input: list and item name
# steps:
# remove item and its quantity from hash
# output: updated hash details

def remove_item(list, item_name)
  list.delete(item_name)
end

# Method to update the quantity of an item
# input: list, item name, and new quantity
# steps:
# replace item with new quantity
# output: updated hash details

def update_item(list, item_name, quantity)
  list[item_name] = quantity
end

# Method to print a list and make it look pretty
# input: list hash details
# steps:
# print hash
# output: hash

def display_list(list)
  puts "Grocery list: "
  list.each do |x, y|
    puts "#{x}: #{y}"
  end
end

# create new list
grocery_list = make_list("Salsa")
# p grocery_list

# add items to list
add_item(grocery_list, "Lemonade", 2)
add_item(grocery_list, "Tomatoes", 3)
add_item(grocery_list, "Onions", 1)
add_item(grocery_list, "Ice Cream", 4)
# p grocery_list

# remove item from list
remove_item(grocery_list, "Lemonade")
# p grocery_list

# update item in list
update_item(grocery_list, "Ice Cream", 1)
# p grocery_list

# print updated list
display_list(grocery_list)


#Reflect:
# What did you learn about pseudocode from working on this challenge?
# I learned that it's difficult!  It's hard for me to write the pseudocode first and not afterwards.
# But if done in the correct order and done well, it makes writing the code later on a lot easier.

# What are the tradeoffs of using arrays and hashes for this challenge?
# I didn't use an array. because the information we needed to store for our grocery list was two-fold -
# first, the items (keys) and then the quantities needed of each (values).

# What does a method return?
# Methods return the value of the last expression listed within them.

# What kind of things can you pass into methods as arguments?
# Lots of different objects can be passed into methods as arguments,
# for example: strings, arrays, integers, variables, etc.

# How can you pass information between methods?
# You can send information from one method to another through parameters.
# You can create a variable and set it equal to a method call, and pass that variable
# as a parameter in other methods.

# What concepts were solidified in this challenge, and what concepts are still confusing?
# It still feels complex, but I learned how to pass info from one method to another by setting up
# a new variable that is equal to the output of one of the methods (line 61 in the code above).

