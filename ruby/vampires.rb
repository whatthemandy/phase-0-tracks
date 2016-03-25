puts "What is your name?"
name = gets.chomp

  if input=="Drake Cula" || input=="Tu Fang"
      reg_name=false
  else
      reg_name=true
  end

puts "How old are you?"
num = gets.chomp
num = num.to_i

puts "What year were you born?"
year = gets.chomp
year = year.to_i

  if (2016-year)==num
    correct_age=true
  else
    correct_age=false
  end

puts "Our company cafeteria serves garlic bread. Should we order some for you?"
input = gets.chomp

  if input=="yes" || input=="y"
      garlic=true
  else
      garlic=false
  end

puts "Would you like to enroll in the company’s health insurance?"
input = gets.chomp

  if input=="yes" || input=="y"
      insurance=true
  else
      insurance=false
  end