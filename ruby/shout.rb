module Shout
  # we'll put some methods here soon, but this code is fine for now!
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yelling_happily(words)
    words + "!!!" + " :)"
  end
end

class Moop
end

puts Shout.yell_angrily("Not again")
puts Shout.yelling_happily("Hello")