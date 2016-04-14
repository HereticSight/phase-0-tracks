#Ask for number of employees
puts "How many employees will be processed?"
  employees = gets.chomp
  
    if employees == ""
      employees = 1
    else
      employees = employees.to_i
    end
  #Loops for each employee to process.
  
  until employees == 0

    #What is your name?
    name = nil
    
    until name != nil
    puts "What is your name?"
    name = gets.chomp
      if name == ""
        name = nil
    #Takes the name, splits it to separate words, capitalizes each word, 
    #and joins them back together with a space in between.
      else
        name = name.split.each{|n_parts| n_parts.capitalize!}.join(' ')
      end
    end

    #How old are you? What year were you born?
    age = nil
    
    until age != nil  
    puts "How old are you?"
    age = gets.chomp
      if age == ""
        age = nil
      else
        age = age.to_i
      end
    end
  
    birth_year = nil

    until birth_year != nil  
      puts "In what year were you born?"
      birth_year = gets.chomp

        if birth_year == ""
          birth_year = nil
        else
          birth_year = birth_year.to_i
        end
    end
    
    current_year = age + birth_year
    
    #Our company cafeteria serves garlic bread. 
    #Should we order some for you?

    puts "Our company cafeteria serves garlic bread. 
    How many orders would you like?"
    garlic_bread = gets.chomp.downcase
      
      if garlic_bread == ("" || "n" || "no")
        garlic_bread = 0
      else
        garlic_bread = garlic_bread.to_i
      end

    #Would you like to enroll in the company's 
    #health insurance?
    puts "Would you like to enroll in the 
    company's health insurance?(y/n)"
    health_ins = gets.chomp.downcase

      if health_ins != "y"
        health_ins = "n"
      end
    insurance = if health_ins =="y"
                  "Yes"
                else
                  "No"
                end
    

    #Even if the employee is an amazing liar otherwise, 
    #anyone going by the name of “Drake Cula” or “Tu Fang” 
    #is clearly a vampire, because come on. 
    #In that case, you should print “Definitely a vampire.”
    if name.downcase == "Drake Cula".downcase || name.downcase == "Tu Fang".downcase
      puts "Name: #{name}"
      puts "Age: #{age}"
      puts "Birth Year: #{birth_year}"
      puts "Insurance: #{insurance}"
      puts "Conclusion: Definitely a vampire."
    else 
      #Asks employee about allergies
      puts "Please let me know what your allergies are one at a time."
        allergies = gets.chomp
        #If allergic to sunshine, immediately note that employee is probably a vampire.
        
        if allergies == "sunshine"
          puts "Name: #{name}"
          puts "Age: #{age}"
          puts "Birth Year: #{birth_year}"
          puts "Insurance: #{insurance}"
          puts "Conclusion: Probably a vampire."
          continue = if allergies =="sunshine"
                      false
                    else
                      true
                    end
        elsif allergies == "none" || allergies == "done"
          continue = true
        else  
          #Until employee says done or none for allergies, repeat the loop
          puts "Let me know when you're done listing allergies."
          until allergies == "done" || allergies == "none"
            continue =  if allergies == "sunshine"
                          false
                        else
                          true
                        end
            #If allergy to sunshine appears as a second allergy, note that employee is probably a vampire.
            if allergies == "sunshine"
              puts "Name:#{name}"
              puts "Age:#{age}"
              puts "Birth Year: #{birth_year}"
              puts "Insurance: #{insurance}"
              puts "Conclusion: Probably a vampire."
            #If allergy is anything else, ask for further allergies.
            else 
              puts "Anything else?"
              allergies = gets.chomp
            end
          end

        end  
          
          if continue

            puts "Name: #{name}"
            puts "Age : #{age}"
            puts "Birth Year: #{birth_year}"
            puts "Insurance: #{insurance}"
            

            #If the employee got their age right, and is 
            #willing to eat garlic bread or sign up for insurance, 
            #the result is “Probably not a vampire.”
            if (current_year == Time.now.year) && (garlic_bread >= 1 || health_ins == "y")
              puts "Conclusion: Probably not a vampire."

            #If the employee got their age wrong, and hates 
            #garlic bread or waives insurance, the result is 
            #“Probably a vampire.”
            elsif current_year != Time.now.year && (garlic_bread < 1 || health_ins == "n")
              puts "Conclusion: Probably a vampire."
            
            #If the employee got their age wrong, hates garlic bread, 
            #and doesn't want insurance, the result is 
            #“Almost certainly a vampire.”
            elsif current_year != Time.now.year && garlic_bread < 1 && health_ins == "n"
              puts "Conclusion: Almost certainly a vampire."
            
            #Otherwise, print “Results inconclusive.”
            else 
              puts "Conclusion: Results inconclusive."
            end
        end    
    end
    employees -= 1
  end
# We live in an inclusive world now, so there let's let them know!
puts "Actually, never mind!"
puts "What do these questions have to do with anything?"
puts "Let's all be friends."