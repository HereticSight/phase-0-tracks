# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

p "iNvEsTiGaTiOn".swapcase #Swaps the case of each letter in a string
# => “InVeStIgAtIoN”

p "zom".insert(1,'o') #inserts the 'o' after the character in index 1
p "zom".insert(2,'o') #inserts the 'o' after the character in index 2
# => “zoom”

p "enhance".center(15) #creates a new string that is 15 characters long with whitespace to pad either side of the original string
#=> “    enhance    ”

p "Stop! You're under arrest!".upcase #creates a copy of the string with all of the characters in upper case letters.
# => “STOP! YOU’RE UNDER ARREST!”

p "the usual".concat(" suspects") #adds the new string ' suspects' to the end of the string
p "the usual".insert(-1, " suspects") #inserts the new string after the last character in the string
p "the usual".ljust(18, " suspects") #creates a string that is 18 characters long and fills the right side with " suspects"
#=> “the usual suspects”

p " suspects".prepend("the usual") #appends the new string 'the usual' to the beginning of the string.
p " suspects".insert(0, "the usual") #inserts the new 'the usual' before the beginning of the string.
p " suspects".rjust(18, "the usual") #creates a string that is 18 characters long and fills the left side with "the usual"
#=> “the usual suspects”

p "The case of the disappearing last letter".chop #returns a string with the last character removed
p "The case of the disappearing last letter".chomp('r') #returns a string with the last character removed if it is an 'r'
p "The case of the disappearing last letter".slice(0..-2) #returns a string with the characters that occupy index 0 to the second to last index
# => “The case of the disappearing last lette”

p "The mystery of the missing first letter".slice(1..-1) #returns a string with the characters that occupy index 0 to the last index.
# => “he mystery of the missing first letter”

p "Elementary,    my   dear      Watson!".squeeze #returns a string with all duplicate characters removed.
p "Elementary,    my   dear      Watson!".gsub(/\s+/, " ") #returns a string and replaces all multiple-whitespace matches with a single space
# => “Elementary, my dear Watson!”

p "z".ord #returns the ordinal location of the character 'z' in relation to the current character set?
# => 122 
# (What is the significance of the number 122 in relation to the character z?)
# This represents the ordinal number of the the character z. It indicates the order
# of succession of the letter z.

p "How many times does the letter 'a' appear in this string?".count('a') #returns an integer equal to the number of times 'a' shows up in the string
#=> 4
