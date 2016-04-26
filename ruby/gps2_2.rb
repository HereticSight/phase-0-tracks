# Method to create a list
# Create a new empty hash
shopping_list = {}
def shoplist(list, string)
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # Split the string by spaces
  items = string.split(' ')
  # Assign the array items to the hash
  items.each { |item| list[item] = 1 }
  # set default quantity to 1
  # print the list to the console [can you use one of your other methods here?]
# output: hash with items ans quantity
  printlist(list)
end
shoplist(shopping_list, "apples oranges pears peaches")
# Method to add an item to a list
def add_item(list, item, quantity=1)
# input: item name and optional quantity
# steps: 
  # Use shopping list as input
  # Use the item to be added as 2nd input
  # Use the item quantity as a 3rd input (look up whether optional input is possible)
  # Add the item and quantity to the shopping list
    list[item] = quantity
# output: shopping list with the added item and quantity
    printlist(list)
end
p add_item(shopping_list, "carrots", 5)
p add_item(shopping_list, "fish")
# Method to remove an item from the list
def remove_item(list, item)
# input: shopping list and item to be removed
# steps: 
  # Use shopping list as input
  # Use item to be removed as input
  # Remove the item from the list if it exists on the list
 list.delete(item)
# output: shopping list with item removed
  printlist(list)
end
p remove_item(shopping_list, "oranges")
# Method to update the quantity of an item
def update_item(list, item, quantity)
  add_item(list, item, quantity)
# input: Shopping list, item to be updated, new quantity
# steps:
  # Use shopping list as input
  # Use item to be updated as input
  # Use new quantity to be updated as input
  # Update the quantity of the item on the list
  # list[item] = quantity
# output: shopping list with updated quantity
  # printlist(list)
end
p update_item(shopping_list, "apples", 1000)
# Method to print a list and make it look pretty
def printlist(list)
# input: shopping list
# steps:
list.each {|item, quantity| puts "Please buy #{quantity} #{item}"}
  # Print each item on the shopping list in a readable fashion
end
# output: One line for each item on the shopping list in a sentence showing item quantity

# Reflection
# * Pseudocode helps to plan out what the code should look like.
# * The tradeoffs using arrays and hashes for this challenge would be requiring the use of 2 arrays in order to account for the item and the quantities and then matching them. The plus side of using an array is splitting the string would automatically create an array. Hashes are better since they can associate each item with a number.
# * Methods return the last value within the method.
# You can pass all objects through methods.
# You can pass information between methods by using methods within methods.
# I did not have too much trouble with the concepts in this challenge. The only issue I have is writing readable pseudocode. I still feel that there is something left to be desired with my pseudocode.