# def block_meth
#   x = "teleportation"
#   puts "What's a good power?"
#   yield x
# end

# block_meth { |x| puts "#{x.capitalize} must be a good power!"}

# big_cats = ["Bobcat", "Cougar", "Mountain Lion"]
# animals = {cat: "Bob", dog: "John", rat: "Pinky"}

# big_cats.each { |cat| puts "#{cat} is clearly bigger than a cat"}
# animals.each { |animal, name| puts "#{name} is a #{animal.to_s}"}

# puts "Before .map! call:"
# p big_cats
# big_cats.map! { |cat| cat = cat.swapcase }

# puts "After .map! call:"
# p big_cats

numbers = [1, 345, 4816574, 12, 4, 7]
ironic_letters = {
  "1" => "one", 
  "2" => "two", 
  "3" => "three",
  "4" => "four",
  "5" => "five"
}

letters = {
  "a" => "1",
  "b" => "2",
  "3" => "c"
}

puts "Before call:"
p ironic_letters
p numbers

numbers.select! { |number| number < 100}
numbers.delete_if { |number| number < 100}

ironic_letters.merge!(letters) {|letter, number, iletter| number + iletter }

ironic_letters.reject! {|letter, number| letter > number }

puts "After call:"
p ironic_letters
p numbers
