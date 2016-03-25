puts "How many employees will be processed?"
number_of_employees = gets.chomp
number_of_employees = number_of_employees.to_i

until number_of_employees == 0

  puts "(#{number_of_employees} remaining) What is your name?"
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
        hates_garlic=false
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