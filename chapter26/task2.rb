class SolarSystem

  SS = {
    'Venus' =>  2,
    'Earth' => 3,
    'Mars' => 4,
    'Mercury' => 1,
    'Neptune' => 8,
    'Pluto' => 9,
    'Saturn' => 6,
    'Sun' => 0,
    'Uranium' => 7,
    'Jupiter' => 5
  }

  def initialize
    SS.each_pair do |k, v|
      define_singleton_method k.downcase do
        v
      end
    end
  end
end

solar_system = SolarSystem.new
puts solar_system.mars
pp solar_system.methods
