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
end


spot= Puppy.new
spot.fetch("ball")
spot.speak(3)
spot.roll_over
p spot.dog_years(2)
spot.play_dead