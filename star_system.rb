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

 def get_largest_planet
  @planets.reduce(@planets[0]) { |biggest_one, planet|
      if biggest_one.diameter > planet.diameter
        biggest_one
      else
        planet
      end
    }
 end



end
