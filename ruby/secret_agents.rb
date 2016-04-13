# 4.6 More Methods

# Encrypts a string by advancing each letter forward in the alphabet by 1.
def encrypt(str)
  index = 0
# Loops the encryption method a number of times equal to the string length  
  while index < str.length
# Exception case made to change "z" to "a".      
    if str[index] == "z"
        str[index] = "a"
      index += 1
# Exception case made to not make any changes to spaces   
    elsif str[index] == " "
      str[index] = str[index] 
      index += 1
    else
      str[index] = str[index].next
      index += 1
    
    end
  
  end
  
  return str
  
end

#Decrypts a string by advancing each letter backward in the alphabet by 1.

def decrypt(str)
    index = 0
    library = "abcdefghijklmnopqrstuvwxyz"
# Loops the decryption method a number of times equal to the string length  
  while index < str.length 
# Exception case made to change "a" to "z". 
    if str[index] == "a"
          str[index] = "z"
        index += 1
# Exception case made to not make any changes to spaces 
    elsif str[index] == " "
        str[index] = str[index]
        index += 1
# Matches the letter in str's indexed value to the library index and subtracts 1 from that value. Then compares that value to the library's index and changes the letter of str
    else
        str[index] = library[library.index(str[index])-1]
        index += 1

    end

  end
  
  return str
  
end

#puts encrypt("abc")
#puts encrypt("zed")
#puts encrypt("z sodijfoe")
#puts decrypt("bcd")
#puts decrypt("afe")
#puts decrypt("a psodfijoe")  

#puts decrypt(encrypt("swordfish"))
#Note future agents the nest method call works because the return command gives the value of the nested method allowing the decrypt method to evaluate that return value as a string. 

# Ask agent whether to encrypt or decrypt.
#   Get that answer with gets.chomp
# If agent wants to encrypt:
#  Ask for phrase using gets.chomp
#  Run the gets.chomp through encrypt method
# If agent wants to decrypt:
#  Ask for encrypted phrase using gets.chomp
#  Run the gets.chomp through decrypt method
# Print result on screen.

valid_response= false

#loops until the user gives either encrypt or decrypt as a response
until valid_response
#Asks agent for preference of encryption or decryption.
  puts "Hello Agent. Would you like to encrypt or decrypt your passphrase?"
  preference= gets.chomp
    
    if preference == "encrypt"
#If preference is encrypt, ask for passphrase to be encrypted.
      puts "What is the passphrase?"
      passphrase = gets.chomp
#Calls method to encrypt passphrase.      
      encrypt(passphrase)
#Prints the encrypted passphrase.     
      puts "Your encrypted passphrase is #{passphrase}."
      valid_response = true

    elsif preference == "decrypt"
#If preference is decrypt, ask for passphrase to be decrypted. 
      puts "What would you like to decrypt?"
      passphrase = gets.chomp
      decrypt(passphrase)
#Prints the decrypted passphrase.     
      puts "Your decrypted passphrase is #{passphrase}."
      valid_response = true
    else
#If user does not enter a valid preference, loops back to beginning.
      puts "Did not understand."
      valid_response = false
    end
end
