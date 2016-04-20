#Initialize a hash for the form.
client = {}
#Prompt Designer/User for the following information about client:

#Name
puts "What is the client's name?"
client[:name] = gets.chomp.split.map{|n_part| n_part.capitalize}.join(' ')
#Age
puts "What is the client's age?"
client[:age] = gets.chomp.to_i
#Number of Children
puts "How many children does the client have?"
client[:children] = gets.chomp.to_i
#Desired Decor Theme
puts "What kind of decor theme would the client like?"
client[:decor_theme] = gets.chomp.capitalize
#Whether the client lives in the city
puts "Does the client live in the city? (y/n)"
if gets.chomp =="y"
  client[:city] = true
else
  client[:city] = false
end

p client

#Ask whether any information needs to be updated
puts "Is there anything you would like to update?"
update_cat = gets.chomp

  if update_cat != "none"
    update_sym = update_cat.intern
  
    puts "What is the updated information for #{update_cat}?"

    if update_sym == :name
      client[update_sym] = gets.chomp.split.map{|n_part| n_part.capitalize}.join(' ')
    
    elsif update_sym == :age || update_sym == :children
      client[update_sym] = gets.chomp.to_i

    elsif update_sym == :decor_theme
      client[update_sym] = gets.chomp.capitalize

    elsif update_sym == :city
      if gets.chomp == "y"
        client[update_sym] = true
      else
        client[update_sym] = false
      end
    end
  end

p client
