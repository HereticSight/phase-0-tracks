#Ask for number of employees and loop process that many times

puts "How many employees will be processed?"
employees = gets.chomp.to_i

  until employees == 0

    #What is your name?

    puts "What is your name?"
    name = gets.chomp

      if name == ""
        name = nil
      end

    #How old are you? What year were you born?

    puts "How old are you?"
    age = gets.chomp

      if age == ""
        age = nil
      else
        age = age.to_i
      end

    current_year = Time.new.year

    puts "In what year were you born?"
    birth_year = gets.chomp

      if birth_year == ""
        birth_year = nil
      else
        birth_year = birth_year.to_i
      end

      if birth_year == nil || age == nil
        actual_age = nil
      else
        actual_age = current_year - birth_year
      end
    #Our company cafeteria serves garlic bread. 
    #Should we order some for you?

    puts "Our company cafeteria serves garlic bread. 
    Should we order some for you?"
    gbread = gets.chomp
      
      if gbread == ""
        gbread = "No"
      end

    #Would you like to enroll in the company's 
    #health insurance?

    puts "Would you like to enroll in the 
    company's health insurance?"
    health_ins = gets.chomp

      if health_ins == ""
        health_ins = "No"
      end

    if name == "Drake Cula" || name == "Tu Fang"
      puts "Definitely a vampire."
    else 
      puts "Please let me know what your allergies are one at a time"
        allergies = gets.chomp

        if allergies == "sunshine"
          puts "Probably a vampire."
          vampire = "Yes"
      
        else
          until allergies == "done"
            if allergies == "sunshine"
              puts "Probably a vampire."
              allergies = "done"
              vampire = "Yes"
            else 
              puts "What else?"
              allergies = gets.chomp
              vampire = "No"
            end
          end
          
          #Even if the employee is an amazing liar otherwise, 

          #anyone going by the name of “Drake Cula” or “Tu Fang” 
          #is clearly a vampire, because come on. 
          #In that case, you should print “Definitely a vampire.”

          if vampire == "No"
            
            #If the employee got their age right, and is 
            #willing to eat garlic bread or sign up for insurance, 
            #the result is “Probably not a vampire.”

            if (age == actual_age) && (gbread == "Yes" || health_ins == "Yes")
              puts "Probably not a vampire."

            #If the employee got their age wrong, and hates 
            #garlic bread or waives insurance, the result is 
            #“Probably a vampire.”

            elsif age != actual_age && (gbread == "No" || health_ins == "No")
              puts "Probably a vampire."

            #If the employee got their age wrong, hates garlic bread, 
            #and doesn’t want insurance, the result is 
            #“Almost certainly a vampire.”

            elsif age != actual_age && gbread == "No" && health_ins == "No"
              puts "Almost certainly a vampire."

            #Otherwise, print “Results inconclusive.”

            else 
              puts "Results inconclusive."
            end
          end
        end
    end
    employees -= 1
  end

