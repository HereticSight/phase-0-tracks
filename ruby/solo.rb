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
    puts "Sending #{string} to #{email}"
  end

  def play_game(string)
    puts "Playing #{string}"
  end

end

computers = []

puts "How many computers would you like to make?" 
make_computers = gets.chomp.to_i

randomize = ""
until randomize == "random" || randomize == "custom"
  puts "Computer type: Random or Custom? Caution: Once random is chosen, all computers will be randomized."
  randomize = gets.chomp.downcase
end

if randomize == "random"
  make_computers.times do
    computer = Computer.new
    computers << computer
  end
end

until make_computers == 0
  
  if randomize == "custom"
    computer = Computer.new
    puts "How fast would you like the CPU to be? (3.0GHz to 4.4GHz)"
    computer.cpu_speed = gets.chomp

    puts "How many GPUs would you like? (1-4)"
    computer.gpus = gets.chomp.to_i

    puts "How much RAM would you like? (4GB to 32GB)"
    computer.ram = gets.chomp

    puts "What color would you like it to be?"
    computer.color = gets.chomp

    computers << computer
    
    make_computers -= 1
    
    randomize = ""
    until randomize == "random" || randomize == "custom"
    puts "Random or Custom? Caution: If random is chosen, the rest of the computers will be randomized."
    randomize = gets.chomp.downcase
    end

  else 
      computer = Computer.new
      computers << computer
      make_computers -= 1  
  end

end

computers.each do |computer|
  puts "#{computer.name} has a #{computer.color} chassis. It contains a #{computer.cpu_speed} CPU, #{computer.ram} of RAM, and #{computer.gpus} GPU(s)."
end