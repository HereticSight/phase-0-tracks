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
  attr_reader :CPU_Speed, :GPUs, :color
  attr_accessor :name, :RAM

  def initialize
    puts "Initializing new computer"
    @name = "PC#{Random.new.rand(999999)}"
    @CPU_Speed = Random.new.rand(3.0..4.4).round(1)
    @GPUs = Random.new.rand(1..4)
    @RAM = [4, 8, 12, 16, 24, 32, 64].sample
    @color = ["black", "pink", "red", "green", "white", "gunmetal", "purple"].sample
  end

end

computers = []

computer = Computer.new

p computer