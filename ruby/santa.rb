

class Santa

#Santa methods
  def speak
    puts "Santa says, \"Ho, ho, ho! Haaaappy holidays!\""
  end

  def eat_milk_and_cookies(cookie)
    puts "Santa says, \"That was a good #{cookie}!\""
  end

  def initialize(gender, ethnicity)
    puts "Initializing Santa instance..."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end

  def about
    puts "Name: Santa Claus"
    puts "Gender: #{@gender}"
    puts "Ethnicity: #{@ethnicity}"
    puts "Reindeer Ranking: #{@reindeer_ranking[0]}, #{@reindeer_ranking[1]}, #{@reindeer_ranking[2]}, #{@reindeer_ranking[3]}, #{@reindeer_ranking[4]}, #{@reindeer_ranking[5]}, #{@reindeer_ranking[6]}, #{@reindeer_ranking[7]}, #{@reindeer_ranking[8]}"
    puts "age: #{@age}"
  end

end

santas = []
santas << Santa.new("agender", "black")
santas << Santa.new("female", "Latino")
santas << Santa.new("bigender", "white")
santas << Santa.new("male", "Japanese")
santas << Santa.new("female", "prefer not to say")
santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
santas << Santa.new("N/A", "N/A")

p santas
