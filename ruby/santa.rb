

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
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"].shuffle
    @age = Random.new.rand(140)
  end

  def about
    puts "Name: Santa Claus"
    puts "Reindeer Ranking: #{@reindeer_ranking[0]}, #{@reindeer_ranking[1]}, #{@reindeer_ranking[2]}, #{@reindeer_ranking[3]}, #{@reindeer_ranking[4]}, #{@reindeer_ranking[5]}, #{@reindeer_ranking[6]}, #{@reindeer_ranking[7]}, #{@reindeer_ranking[8]}"
  end

  def celebrate_birthday
    @age += 1
  end

  def get_mad_at(reindeer)
    @reindeer_ranking << @reindeer_ranking.slice!(@reindeer_ranking.index(reindeer))
  end

end

example_genders = ["agender", "female", "bigender", "male", "gender fluid","gender solid" , "gender gaseous" "N/A",]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "Japanese", "American", "Korean", "Martian", "Jupiterite", "N/A"]

Random.new.rand(10000).times do
  santa = Santa.new(example_genders.sample, example_ethnicities.sample)
  santa.about
  puts "Gender: #{santa.gender}"
  puts "Ethnicity: #{santa.ethnicity}"
  puts "Age: #{santa.age}"
end

#
#
# p santas[0].age
# p santas[0].ethnicity
# santas[0].celebrate_birthday
# p santas[0].gender = "female"
# p santas[0].get_mad_at("Dasher")
# p santas[0].about
