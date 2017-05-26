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

  def initialize(name, mass, day, year)
    super(name, mass)
    @day = day
    @year = year
  end

end

# ----- End of Planet class ----- #

class Star < Body

  def initialize(name, mass, type)
    super(name, mass)
    @type = type
  end

end

# ----- End of Star class ----- #

class Moon < Body

  def initialize(name, mass, month, planet)
    super(name, mass)
    @month = month
    @planet = planet
  end

end

# ----- End of Moon class ----- #
