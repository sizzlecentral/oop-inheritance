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
