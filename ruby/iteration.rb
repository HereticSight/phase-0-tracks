def block_meth
  x = "teleportation"
  puts "What's a good power?"
  yield x
end

block_meth { |x| puts "#{x.capitalize} must be a good power!"}

big_cats = ["Bobcat", "Cougar", "Mountain Lion"]
animals = {cat: "Bob", dog: "John", rat: "Pinky"}

big_cats.each { |cat| puts "#{cat} is clearly bigger than a cat"}
animals.each { |animal, name| puts "#{name} is a #{animal.to_s}"}

puts "Before .map! call:"
p big_cats
big_cats.map! { |cat| cat = cat.swapcase }

puts "After .map! call:"
p big_cats
