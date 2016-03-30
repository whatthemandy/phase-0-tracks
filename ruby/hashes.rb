#get client name and store in variable
puts "Enter client name:"
name = gets.chomp

#get client age and store in variable, convert variable to integer
puts "Enter client age:"
age  = gets.chomp.to_i

#get client number of children and store in variable, convert variable to integer
puts "Enter client's number of children:"
children = gets.chomp.to_i

#get client decor theme store in variable
puts "Enter client's decor theme:"
theme = gets.chomp

#get whether client likes surprises and store in variable
puts "Does client like surprises? (yes/no)"
surprise = gets.chomp

#convert surprise variable to boolean
  if surprise == "yes" || surprise == "y"
    surprise = true
  else surprise = false
  end

#store client information in new hash
interior_design = {
  name: name,
  age: age,
  children: children,
  theme: theme,
  surprise: surprise
}

#print hash data
p interior_design

#ask if user needs to update any variables, store answer in input variable
puts "Do you need to update any items? Enter item-name or 'none':"
input = gets.chomp

#if user needs to update a variable, update the corresponding hash value
if input == "name"
  puts "Enter updated name:"
  interior_design[:name] = gets.chomp
elsif input == "age"
  puts "Enter updated age:"
  interior_design[:age] = gets.chomp
elsif input == "children"
  puts "Enter updated number of children:"
  interior_design[:children] = gets.chomp
elsif input == "theme"
  puts "Enter updated theme:"
  interior_design[:theme] = gets.chomp
elsif input == "surprise"
  puts "Enter updated answer (yes/no):"
  interior_design[:surprise] = gets.chomp
else
  puts "Great!"
end

#print new hash data
p interior_design