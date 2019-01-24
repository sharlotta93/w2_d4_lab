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

 def get_smallest_planet
  @planets.reduce(@planets[0]) { |smallest_one, planet|
      if smallest_one.diameter < planet.diameter
        smallest_one
      else
        planet
      end
    }
 end

 def get_planets_with_no_moons
   no_moons = @planets.find_all { |planet| planet.number_of_moons == 0}
   return no_moons
 end

 def get_planets_with_more_moons(number)
   planets_with_more_moons = @planets.find_all { |planet| planet.number_of_moons > number}
   return planets_with_more_moons.map { |planet| planet.name }
 end

 def get_number_of_planets_closer_than(distance)
   planets_close_to_sun = @planets.find_all { |planet| planet.distance_from_sun < distance }
   return planets_close_to_sun.count
 end

  def get_total_number_of_moons
   total_moons = @planets.reduce(0) { |total, moon_number|
     total + moon_number.number_of_moons }
   return total_moons
  end

  def get_planet_names_sorted_by_increasing_distance_from_sun
    planets_order = @planets.distance_from_sun
    p planets_order.sort
  end

end
