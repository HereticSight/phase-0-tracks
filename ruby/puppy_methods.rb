class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(int)
    int.times {puts "Woof!"}
  end
  
  def roll_over
    puts "*rolls over*"
  end
  
  def dog_years(human_years)
    dog_age= human_years*7
  end
  
  def play_dead
    puts "*playing dead*"
  end
  
  def initialize
    puts "Initializing new puppy instance..."
  end
end


spot= Puppy.new
spot.fetch("ball")
spot.speak(3)
spot.roll_over
p spot.dog_years(2)
spot.play_dead

class Cat
  
  def initialize
    puts "A feral feline has appeared!"
  end
  
  def jump(int)
    int.times { puts "*jumps*"}
  end
  
  def talk
    puts "Meow"
  end
  
end

cats = []

50.times do
  cats << Cat.new
end

cats.each { |cat| cat.talk}
cats.each { |cat| cat.jump(2)}