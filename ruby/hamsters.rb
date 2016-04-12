puts "What is the hamster's name?"
hamster_name = gets.chomp

puts "On a scale of 1-10, how loud is #{hamster_name} at night?"
hamster_volume = gets.chomp.to_i

puts "What color is #{hamster_name}'s fur?"
fur_color = gets.chomp

puts "How old is #{hamster_name}"
  hamster_age = gets.chomp
  if hamster_age == ""
    hamster_age = nil
  else
    hamster_age = hamster_age.to_i
  end

if hamster_age != nil
  if hamster_volume <= 5
  puts "#{hamster_name} is #{hamster_age} years old with #{fur_color} fur color. #{hamster_name} is quiet at night."
  else
    puts "#{hamster_name} is #{hamster_age} years old with #{fur_color} fur color. #{hamster_name} is loud at night."
  end
else
  if hamster_volume <= 5
  puts "#{hamster_name} has #{fur_color} fur color. #{hamster_name} is quiet at night. #{hamster_name}'s age is unknown."
  else
    puts "#{hamster_name} has #{fur_color} fur color. #{hamster_name} is loud at night. #{hamster_name}'s age is unknown."
  end
end


# whether the hamster is a good candidate for adoption

if hamster_age == nil
  puts "#{hamster_name} is not suitable for adoption."
elsif (hamster_age <= 2 && hamster_volume <= 5)
  puts "#{hamster_name} is suitable for adoption."
else
  puts "#{hamster_name} is not suitable for adoption."
end