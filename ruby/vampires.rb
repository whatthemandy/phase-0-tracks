puts "How many employees will be processed?"
number_of_employees = gets.chomp
number_of_employees = number_of_employees.to_i

until number_of_employees == 0

  puts "(#{number_of_employees} remaining) What is your name?"
  name = gets.chomp

  puts "How old will you be turning this year?"
  num = gets.chomp
  num = num.to_i

  puts "What year were you born?"
  year = gets.chomp
  year = year.to_i

    if (2016-year)==num
      correct_age=true
    else
      correct_age=false #&& incorrect_age=true (hoped this would work but it didn't)
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
        likes_garlic=false #&& hates_garlic=true (hoped this would work but it didn't)
    end

    if input=="yes" || input=="y"
        hates_garlic=false
    else
        hates_garlic=true
    end

  puts "Would you like to enroll in the company’s health insurance?"
  input = gets.chomp

    if input=="yes" || input=="y"
        wants_insurance=true
    else
        wants_insurance=false #&& waives_insurance==true (hoped this would work but it didn't)
    end

    if input=="yes" || input=="y"
        waives_insurance=false
    else
        waives_insurance=true
    end

  puts "Name any allergies one at a time. When finished, type 'done'."
  allergy = gets.chomp

  until allergy == "done"
    if allergy=="sunshine"
      number_of_employees -= 1
      puts "Probably a vampire."
      break
    end
    puts "Any more?"
    allergy = gets.chomp
  end

    if allergy != "sunshine"

      if name=="Drake Cula"
        puts "Definitely a vampire."
      elsif name=="Tu Fang"
        puts "Definitely a vampire."
      elsif correct_age && (likes_garlic || wants_insurance)
        puts "Probably not a vampire."
      elsif incorrect_age && (hates_garlic && waives_insurance)
        puts "Almost certainly a vampire."
       elsif incorrect_age && (hates_garlic || waives_insurance)
        puts "Probably a vampire."
      else
        puts "Results inconclusive."
      end
      number_of_employees -= 1
    end
end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."


=begin

REFACTORED CODE, a couple weeks later:

# removed reverse-variables to simplify
# tried that before but couldn't get boolean statements at the end to work
# probably didn't use quotation marks correctly

puts "How many employees will be processed?"
number_of_employees = gets.chomp
number_of_employees = number_of_employees.to_i

until number_of_employees == 0

  puts "(#{number_of_employees} remaining) What is your name?"
  name = gets.chomp

  puts "How old will you be turning this year?"
  age = gets.chomp
  age = age.to_i

  puts "What year were you born?"
  year = gets.chomp
  year = year.to_i

    # create new instance of time to get current year
    # so program doesn't have to be updated every year
    time = Time.new

    if (time.year-year) == age
      correct_age=true
    else
      correct_age=false
    end

  puts "Our company cafeteria serves garlic bread. Should we order some for you? (yes/no)"
  garlic = gets.chomp

  puts "Would you like to enroll in the company’s health insurance? (yes/no)"
  insurance = gets.chomp

  puts "Name any allergies one at a time. When finished, type 'done'."
  allergy = gets.chomp

  until allergy == "done"
    if allergy=="sunshine"
      number_of_employees -= 1
      puts "Probably a vampire."
      break
    end
    puts "Any more?"
    allergy = gets.chomp
  end

    if allergy != "sunshine"
      if correct_age && (garlic == "yes" || insurance == "yes")
        puts "Probably not a vampire."
      elsif correct_age == false && (garlic == "no" || insurance == "no")
        puts "Probably a vampire."
      elsif correct_age == false && (garlic == "no" && insurance == "no")
        puts "Almost certainly a vampire."
      elsif name == "Drake Cula" || name == "Tu Fang"
        puts "Definitely a vampire."
      else
        puts "Results inconclusive."
      end
      number_of_employees -= 1
    end
end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."

=end