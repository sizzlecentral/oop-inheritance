# Solar System bodies
# -------------------

class Body

  attr_reader :name, :mass

  def initialize(name, mass)
    @name = name
    @mass = mass
  end


end

# ----- End of Body class ----- #

class Planet < Body

end

# ----- End of Planet class ----- #

class Star < Body

end

# ----- End of Star class ----- #

class Moon < Body

end

# ----- End of Moon class ----- #
