# Solar System
# ------------

class System

  attr_reader :bodies

  def initialize
    @@bodies = []
  end

# ----- Class Methods ----- #

  def self.all
    @@bodies
  end

  def self.create
    System.new
  end



# ----- Instance Methods ----- #

  def add(planet)
    @@bodies << planet
  end

  def total_mass
    mass = []
    @@bodies.each do |planet|
      mass << planet.mass
    end
    return mass.sum
  end


end

# ----- End of System class ----- #

milkyway = System.create

# p System.all
milkyway.add("Neptune")
milkyway.add("Venus")
p System.all
