class Ship
  attr_accessor :rockets, :torpedoes, :cargo_hold, :crane

  def initialize params = {}
    @rockets = params[:rockets] || false
    @torpedoes = params[:torpedoes] || false
    @cargo_hold = params[:cargo_hold] || false
    @crane = params[:crane] || false
  end
end

class Submarine < Ship
  attr_reader :underwater

  def initialize params = {}
    @underwater = true
    super params
  end
end

class Cargo < Ship
  attr_reader :underwater

  def initialize params = {}
    @underwater = false
    super params
  end
end

atomic_submarine = Submarine.new rockets: true, torpedoes: true
dry_cargo = Cargo.new cargo_hold: true, crane: true
cargo_ship = Cargo.new crane: true
oil_tanker = Cargo.new cargo_hold: true
missile_cruiser = Cargo.new rockets: true
military_transport = Cargo.new rockets: true, cargo_hold: true, crane: true
