# Exercise 1 / Class Time
# -----------------------

class Person

  def initialize(name)
    @name = name
  end

  def greeting
    p "Hi, my name is #{@name}."
  end

end

# ----- End of Person class ----- #

class Student < Person

  def learn
    puts "I get it!"
  end

end

# ----- End of Student class ----- #

class Instructor < Person

  def teach
    puts "Everything in Ruby is an Object!"
  end

end

# ----- End of Instructor class ----- #

chris = Instructor.new("Chris")
# chris.greeting

cristina = Student.new("Cristina")
# cristina.greeting

# chris.teach
# cristina.learn
# cristina.teach => Won't work because teach is an instance method of the Instructor class
