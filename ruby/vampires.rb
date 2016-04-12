#What is your name?

puts "What is your name?"
name = gets.chomp

#How old are you? What year were you born?

puts "How old are you?"
age = gets.chomp

current_year = Time.new.year
puts "In what year were you born?"
birth_year = gets.chomp


actual_age = current_year - birth_year

#Our company cafeteria serves garlic bread. 
#Should we order some for you?

puts "Our company cafeteria serves garlic bread. 
How many servings would you like?"
gbread_servings = gets.chomp

#Would you like to enroll in the company's 
#health insurance?

puts "Would you like to enroll in the 
company's health insurance?"
health_ins = gets.chomp

#If the employee got their age right, and is willing to eat garlic bread or sign up for insurance, 
#the result is “Probably not a vampire.”

if (age == actual_age) && (gbread_servings >= 1 || health_ins == "Yes")
  puts "Probably not a vampire."

#If the employee got their age wrong, and hates garlic bread or waives insurance, the result is 
#“Probably a vampire.”

elsif age != actual_age && (gbread_servings <= 1 || health_ins == "No")
  puts "Probably a vampire."

#If the employee got their age wrong, hates garlic bread, and doesn’t want insurance, the result is 
#“Almost certainly a vampire.”

elsif (age != actual_age) && gbread_servings <= 1 && health_ins == "No"
  puts "Almost certainly a vampire."

#Even if the employee is an amazing liar otherwise, anyone going by the name of “Drake Cula” or “Tu Fang” 
#is clearly a vampire, because come on. In that case, you should print “Definitely a vampire.”

elsif name = "Drake Cula" || name = "Tu Fang"
  puts 

#Otherwise, print “Results inconclusive.”

else 
  puts "Results inconclusive"

end
