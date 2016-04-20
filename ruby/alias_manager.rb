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
      
full_name = "Jessica Rabbit"
p full_name
#Split name by word
new_name = full_name.downcase.split(' ')
p full_name
p new_name
#Swap first and last name
new_name = new_name.reverse
p new_name

  #For each item in array:
  index = 0
  while index < new_name.count
    #Split into letters
    new_name[index] = new_name[index].split('')
  index += 1
  end
p new_name
  # Create a string with all of the vowels
  vowel = "aeiou"
  # Create a string with all of the consonants by deleting vowel variable from the alphabet
  consonant = "abcdefghijklmnopqrstuvwxyz".delete(vowel)
  p consonant
  windex = 0
  while windex < new_name.count
    aindex = 0
      #Advance vowels forward 1 vowel
      while aindex < new_name[windex].count
      if vowel.index(new_name[windex][aindex]) != nil
        if new_name[windex][aindex] == "u"
          new_name[windex][aindex] = "a"
        else
          new_name[windex][aindex] = vowel[vowel.index(new_name[windex][aindex]) + 1]
        end
        p new_name
        #Advance consonants forward 1 consonant
      else
        if new_name[windex][aindex] == "z"
          new_name[windex][aindex] = "b"
        else
          new_name[windex][aindex] = consonant[consonant.index(new_name[windex][aindex]) + 1]
        end
      end
    aindex +=1
    end
  windex +=1
  end
  p new_name
  #join each name array back together and capitalize
  index = 0
  while index < new_name.count
    new_name[index] = new_name[index].join.capitalize
  index += 1
  end
  #join full name back together
  new_name = new_name.join(' ')


puts "#{full_name}'s secret agent name is #{new_name}."