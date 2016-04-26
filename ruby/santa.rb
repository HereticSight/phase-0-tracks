

class Santa
  attr_reader :reindeer_ranking, :ethnicity
  attr_accessor :gender, :age,

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

#Getter Methods
  def age
    @age
  end

  def ethnicity
    @ethnicity
  end


  def celebrate_birthday
    @age += 1
  end

  def get_mad_at(reindeer)
    @reindeer_ranking << @reindeer_ranking.slice!(@reindeer_ranking.index(reindeer))
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

p santas[0].age
p santas[0].ethnicity
santas[0].celebrate_birthday
p santas[0].gender = "female"
p santas[0].get_mad_at("Dasher")
p santas[0].about
