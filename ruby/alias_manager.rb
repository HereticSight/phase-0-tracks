#Split name by word
  #Swap first and last name in array
    #For each item in the array:
      #Split into letters
      #Create vowel and consonant strings
        #For each letter
          #Determine if letter is:
            #Vowel
              #Advance letter one vowel forward
            #Consonant
              #Advance letter one consonant forward
          #Combine each array back into names
        #Combine each name back into a full name

#create variables for vowel and consonant strings
vowel = "aeiou"
consonant = "abcdefghijklmnopqrstuvwxyz".delete("aeiou")
#Initialize a hash for agent aliases
agent_alias = {}

#Define method to advance vowel forward one vowel
def vowel_advance(letter)
  vowel = "aeiou"
  if letter == "u"
    letter = "a"
  else
    letter = vowel[vowel.index(letter) + 1]
  end
end

#Define method to advance consonant forward one consonant
def consonant_advance(letter)
consonant = "abcdefghijklmnopqrstuvwxyz".delete("aeiou")
  if letter == "z"
    letter = "b"
  else
    letter = consonant[consonant.index(letter) +1]
  end 
end

#Repeat until agent types "quit" or enters no information
full_name = "Jessica Rabbit"
until full_name.downcase == "quit" || full_name == ""
  puts "What is the agent's name?"
  full_name = gets.chomp

    #Split name by word and reverse the order of the array
    new_name = full_name.downcase.split(' ').reverse
    #Split each name into a character array
    new_name.map!{|name| name.chars}
  
    #for each name part do the following:
    new_name.each do |n_part|
         #for each letter in the array, do the following:
         n_part.map! do |letter|
             #If it matches a vowel:
             if vowel.index(letter) != nil
                 #Run the vowel advance method
                 vowel_advance(letter)
             #If it matches a consonant:
             elsif consonant.index(letter) != nil
              #Run the consonant advance method
              consonant_advance(letter)
             #To catch any symbols in names
             else
              letter = letter
             end
         end
    end

  #Combine each letter array back into names, and combine each name into a full name
  new_name = new_name.map!{|n_part| n_part.join('').capitalize}.join(' ')
  
  #If user makes any input other than quit
  if full_name.downcase != "quit" && full_name != ""
  #Add agent name and alias as key=>value pair
    agent_alias[full_name] = new_name
  #Print the alias
    puts new_name
  else
    puts "No other names were entered. The agents are as follows:"
  end
end

# agent_alias.delete_if {|real_name,agent_name| real_name.downcase == "quit" || real_name == ""}
agent_alias.each {|real_name,agent_name| puts "#{real_name}, also known as #{agent_name}."}
