puts "What is your name?"
input = gets.chomp

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
    correct_age=false #&& incorrect_age=true
  end

  if (2016-year)==num
    incorrect_age=false
  else
    incorrect_age=true
  end

puts "Our company cafeteria serves garlic bread. Should we order some for you?"
input = gets.chomp

  if input=="yes" || input=="y"
      likes_garlic=true
  else
      likes_garlic=false #&& hates_garlic=true
  end

  if input=="yes" || input=="y"
      hatess_garlic=false
  else
      hates_garlic=true
  end

puts "Would you like to enroll in the company’s health insurance?"
input = gets.chomp

  if input=="yes" || input=="y"
      wants_insurance=true
  else
      wants_insurance=false #&& waives_insurance==true
  end

  if input=="yes" || input=="y"
      waives_insurance=false
  else
      waives_insurance=true
  end