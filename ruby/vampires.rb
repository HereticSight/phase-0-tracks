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
        name = name.split.map{|n_parts| n_parts.capitalize}.join(' ')
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
      
      if garlic_bread == "yes" || garlic_bread == "y"
        garlic_bread = 1
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
    
    puts "Please let me know what your allergies are one at a time."
        allergies = gets.chomp
        #If allergic to sunshine, immediately note that employee is probably a vampire.
        
        if allergies == "sunshine"
          continue = false
          result = "Conclusion: Probably a vampire"

        elsif allergies == "none" || allergies == "done"
          continue = true
          result = "Conclusion: Results Inconclusive"
        else  
          #Until employee says done or none for allergies, repeat the loop
          puts "Let me know when you're done listing allergies."
          until allergies == "done"
            continue =  if allergies != "sunshine"
                          true
                        end
            #If allergy to sunshine appears as a second allergy, note that employee is probably a vampire.
            if allergies == "sunshine"
              result = "Conclusion: Probably a vampire"
            continue = false
            #If allergy is anything else, ask for further allergies.
            else 
              puts "Anything else?"
              allergies = gets.chomp
              result = "Conclusion: Results Inconclusive"
            end
          end

        end  
          
          if continue

            #If the employee got their age right, and is 
            #willing to eat garlic bread or sign up for insurance, 
            #the result is “Probably not a vampire.”
            if (current_year == Time.now.year) && (garlic_bread >= 1 || health_ins == "y")
              result = "Conclusion: Probably not a vampire."
            end
            
            #If the employee got their age wrong, and hates 
            #garlic bread or waives insurance, the result is 
            #“Probably a vampire.”
            if current_year != Time.now.year && (garlic_bread < 1 || health_ins == "n")
              result = "Conclusion: Probably a vampire."
            end
            #If the employee got their age wrong, hates garlic bread, 
            #and doesn't want insurance, the result is 
            #“Almost certainly a vampire.”
            if current_year != Time.now.year && garlic_bread < 1 && health_ins == "n"
              result = "Conclusion: Almost certainly a vampire."
            end 

            #Even if the employee is an amazing liar otherwise, 
            #anyone going by the name of “Drake Cula” or “Tu Fang” is clearly a vampire, because come on. 
            #In that case, you should print “Definitely a vampire.”
            if name.downcase == "Drake Cula".downcase || name.downcase == "Tu Fang".downcase
              result = "Conclusion: Definitely a vampire."
            end
            #Otherwise, print “Results inconclusive.”
          end
          
            puts "Name: #{name}"
            puts "Age : #{age}"
            puts "Birth Year: #{birth_year}"
            puts "Garlic Bread: #{garlic_bread} Orders"
            puts "Insurance: #{insurance}"
            puts result

    employees -= 1
  end
# We live in an inclusive world now, so there let's let them know!
puts "Actually, never mind!"
puts "What do these questions have to do with anything?"
puts "Let's all be friends."

