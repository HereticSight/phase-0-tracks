def block_meth
  x = "teleportation"
  puts "What's a good power?"
  yield x
end

block_meth { |x| puts "#{x.capitalize} must be a good power!"}