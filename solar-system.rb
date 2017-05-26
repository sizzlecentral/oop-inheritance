# Solar System
# ------------

class System

  require_relative 'solar-system-bodies'
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

  def add_bodies(body)
    @@bodies << body
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

mercury = Planet.new("Mercury", 3, 1, 2)
milkyway.add_bodies(mercury)

venus = Planet.new("Venus", 5, 2, 1)
milkyway.add_bodies(venus)

earth = Planet.new("Earth", 6, 4, 3)
milkyway.add_bodies(earth)

star1 = Star.new("Star1", 2, "G-Type")
milkyway.add_bodies(star1)

star2 = Star.new("Star2", 1, "G-Type")
milkyway.add_bodies(star2)

star3 = Star.new("Star3", 3, "G-Type")
milkyway.add_bodies(star3)

moon1 = Moon.new("Moon1", 2, 1, "Mercury")
milkyway.add_bodies(moon1)

moon2 = Moon.new("Moon2", 1, 3, "Venus")
milkyway.add_bodies(moon2)

p milkyway.total_mass
