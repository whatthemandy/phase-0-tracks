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

#print hash results
p interior_design

