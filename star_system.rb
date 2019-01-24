class StarSystem
  attr_reader :name, :planets

def initialize(name, planets)
  @name = name
  @planets = planets
end

def planet_names
  names = @planets.map { |planet| planet.name }
  return names
end

  def get_planet_by_name(name)
    planet = @planets.find { |planet| planet.name == name }
    return planet
  end






end
