# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

p "iNvEsTiGaTiOn".swapcase
# => “InVeStIgAtIoN”

p "zom".insert(1,'o')
p "zom".insert(2,'o')
# => “zoom”

p "enhance".center(15)
#=> “    enhance    ”

p "Stop! You're under arrest!".upcase
# => “STOP! YOU’RE UNDER ARREST!”

p "the usual".concat(" suspects")
p "the usual".insert(-1, " suspects")
p "the usual".ljust(18, " suspects")
#=> “the usual suspects”

p " suspects".prepend("the usual")
p " suspects".insert(0, "the usual")
p " suspects".rjust(18, "the usual")
#=> “the usual suspects”

p "The case of the disappearing last letter".chop
p "The case of the disappearing last letter".chomp('r')
p "The case of the disappearing last letter".slice(0..-2)
# => “The case of the disappearing last lette”

p "The mystery of the missing first letter".slice(1..-1)
# => “he mystery of the missing first letter”

p "Elementary,    my   dear      Watson!".squeeze
p "Elementary,    my   dear      Watson!".gsub(/\s+/, " ")
# => “Elementary, my dear Watson!”

p "z".ord
# => 122 
# (What is the significance of the number 122 in relation to the character z?)
# This represents the ordinal number of the the character z. It indicates the order
# of succession of the letter z.

p "How many times does the letter 'a' appear in this string?".count('a')
#=> 4