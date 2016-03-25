puts "What is your name?"
name = gets.chomp

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

if correct_age && (likes_garlic || wants_insurance)
  puts "Probably not a vampire."
else
  puts "VAMPIRE ALERT!"
end

if incorrect_age && (hates_garlic || waives_insurance)
  puts "Probably a vampire."
else
  puts "NO WORRIES, GUYS."
end

if incorrect_age && (hates_garlic && waives_insurance)
  puts "Almost certainly a vampire."
else
  puts "CHILLAX."
end

if name=="Drake Cula"
  puts "Definitely a vampire."
elsif name=="Tu Fang"
  puts "Definitely a vampire."
else
  puts "NO MORE FEARS."
end
