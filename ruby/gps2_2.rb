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
  p list
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

# Method to print a list and make it look pretty
# input: list hash details
# steps:
# print hash
# output: hash