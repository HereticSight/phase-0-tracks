module Shout
  # we'll put some methods here soon, but this code is fine for now!
  # def self.yell_angrily(words)
  #   words + "!!!" + " :("
  # end

  # def self.yelling_happily(words)
  #   words + "!!!" + " :)"
  # end

  def yell_angrily(words)
    words + "!!!" + " >:["
  end

  def yell_happily(words)
    words + "!!!" + " :D"
  end
end

class Teacher
  include Shout
end

class Student
  include Shout
end

teacher = Teacher.new
puts teacher.yell_angrily("The class average is barely passing")
puts teacher.yell_happily("I've created some remedial work for everyone")
student = Student.new
puts student.yell_angrily("More homework?")
puts student.yell_happily("It's Spring Break")


# puts Shout.yell_angrily("Not again")
# puts Shout.yelling_happily("Hello")