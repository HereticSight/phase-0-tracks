#Build method that takes 3 items as parameters and returns an array with the 3 items as objects.
def build_array(a, b, c)
  newarray = [a, b, c]
  return newarray
end

#build a method that takes an array and an item as parameters. Adds the item to the array and returns the array with the newly added item.
def add_to_array(arr, item)
  arr << item
  return arr
end

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

#Ask the array whether it includes a certain item. Print the result of this method call (labeled so it prints as more than just an isolated boolean value without any context.)

#Ask user what item user would like to look for in the box.
puts "What item do you want to look for in Pandora's Box?"
# sets the users input equal to 'item' variable
item = gets.chomp

#If Pandoras_Box includes the item, lets the user know the item is included.
if Pandoras_Box.include?(item)
  puts "Pandora's Box includes #{item}!"
#Otherwise it lets the user know the item is not included.
else
  puts "Pandora's Box does not include #{item}!"
end

#Initialize another array that already has a few items in it.
Olympus = ["Zeus", "Hera", "Hermes"]
#prints Olympus after initializing
p Olympus

#Add the two arrays together and store in a new variable
puts "Allthethings = Olympus + Pandoras_Box"
Allthethings = Olympus + Pandoras_Box
#Print the new array
p Allthethings

#prints out the method call for build_array
p build_array("Carrots", "Peas", "Onions")
#prints out the method call for add_to_array
p add_to_array(["NYC","San Fran"],"Chicago")
p add_to_array(["mouse","keyboard","monitor"], "webcam")
p add_to_array(["hamsters", "fish", "cats"], "dogs")