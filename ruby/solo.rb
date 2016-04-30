#Designing a Computer
  #VARIABLE ATTRIBUTES ------------
    #CPU Speed
    #No of GPUs
    #RAM

    #Color
  
  #METHODS --------------
    #Send Email
    #Play game
    #Turn On

class Computer
  attr_reader :name
  attr_accessor :cpu_speed, :gpus, :color, :ram

  def initialize
    puts "Initializing new computer"
    @name = "PC#{Random.new.rand(99999)}"
    @cpu_speed = "#{Random.new.rand(3.0..4.4).round(1)}GHz"
    @gpus = Random.new.rand(1..4)
    @ram = ["4GB", "8GB", "12GB", "16GB", "24GB", "32GB"].sample
    @color = ["black", "pink", "red", "green", "white", "gunmetal", "purple"].sample
  end

  def turn_on
    puts "#{name} is on. Please login."
  end

  def send_email(email,string)
    puts "Sending \"#{string}\" to #{email}"
  end

  def play_game(string)
    puts "Playing #{string}"
  end

end

computers = []
#Ask user for the desired number of computers.
puts "How many computers would you like to make?" 
make_computers = gets.chomp.to_i

randomize = ""
#Loop until random or custom are typed.
until randomize == "random" || randomize == "custom"
  #Ask user if they would like a random or custom computer.
  puts "Computer type: Random or Custom? Caution: Once random is chosen, all computers will be randomized."
  randomize = gets.chomp.downcase
end

#If user chooses random
if randomize == "random"
  #do the following code equal to the number of computers the user wants to make
  make_computers.times do
    #make a randomized computer
    computer = Computer.new
    #add the computer to the computers array
    computers << computer
  end
end

until make_computers == 0
  # If user decided to make a custom computer, ask for the desired specifications:  
  if randomize == "custom"
    #Create a new instance of computers
    computer = Computer.new
    #Ask for desired CPU speed and enter it into the CPU Speed attribute
    puts "How fast would you like the CPU to be? (3.0GHz to 4.4GHz)"
    computer.cpu_speed = gets.chomp

    #Ask for the desired number of GPUs, convert it to an integer, and enter it into the gpus attribute
    puts "How many GPUs would you like? (1-4)"
    computer.gpus = gets.chomp.to_i

    #Ask for the desired amount of RAM and enter it into the RAM attribute
    puts "How much RAM would you like? (4GB to 32GB)"
    computer.ram = gets.chomp

    #Ask for the desired color and enter it into the color attribute.
    puts "What color would you like it to be?"
    computer.color = gets.chomp

    #Add the computer to the computers array
    computers << computer
    
    #Subtract 1 from the computers counter
    make_computers -= 1
    
    randomize = ""
    until randomize == "random" || randomize == "custom"
    puts "Random or Custom? Caution: If random is chosen, the rest of the computers will be randomized."
    randomize = gets.chomp.downcase
    end

  else 
      #Create a new computer
      computer = Computer.new
      #Add computer to the computers array
      computers << computer
      #subtract 1 from the computers counter
      make_computers -= 1  
  end

end
# Prints the name and specs of each computer created.
computers.each do |computer|
  puts "#{computer.name} has a #{computer.color} chassis. It contains a #{computer.cpu_speed} CPU, #{computer.ram} of RAM, and #{computer.gpus} GPU(s)."
end
#Tests to make sure computer can turn on
computers[0].turn_on
#Tests to make sure computer can send email
computers[0].send_email("kphu@outlook.com","Hello World!")
#Test to ensure computer can play a game
computers[0].play_game("The Witcher 3")