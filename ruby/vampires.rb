puts "What is your name?"
name = gets.chomp

def age
 puts "How old are you?"
 num = gets.chomp
 num = num.to_i

 puts "What year were you born?"
 year = gets.chomp
 year = year.to_i

  if (2016-year)==num
    false
  else true
  end
end

age

puts "Our company cafeteria serves garlic bread. Should we order some for you?"
garlic = gets.chomp

  if input=="yes" || input=="y"
      garlic=true
  else
      garlic=false
  end

puts "Would you like to enroll in the company’s health insurance?"
insurance = gets.chomp

  if input=="yes" || input=="y"
      insurance=true
  else
      insurance=false
  end



