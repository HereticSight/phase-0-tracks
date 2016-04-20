# initialize an array
puts "Pandoras_Box =[]"
Pandoras_Box = []

# Print the array after initialization
p Pandoras_Box

# add 5 items to the array
puts "Pandoras_Box << \"Expectation\" << \"Illness\" << \"Fear\" << \"Anxiety\"<< \"Hope\""
Pandoras_Box << "Expectation" << "Illness" << "Fear" << "Anxiety"<< "Hope"

# Print array after adding 5 items.
p Pandoras_Box

puts "Pandoras_Box.delete_at(2)"
#delete the item at index 2
Pandoras_Box.delete_at(2)

# Print the array after deleting the object at index 2
p Pandoras_Box

# Insert new object at index 2
puts "Pandoras_Box.insert(2,\"Loathing\")"
Pandoras_Box.insert(2,'Loathing')
# Prints the array with new object at index 2
p Pandoras_Box

# Remove first item from array without referring to the index
puts "Pandoras_Box.delete(\"Expectation\")"
Pandoras_Box.delete("Expectation")
# Prints the array after deleting the item
p Pandoras_Box

