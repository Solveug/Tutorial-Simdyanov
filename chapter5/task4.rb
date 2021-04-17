class Car
  attr_accessor :color, :type, :mass, :hp, :volume, :fuel_type, :state, :speed

  def initialize params = {}
    @color = params[:color] || [:black, :white, :yellow, :green, :red, :blue].sample
    @type = params[:type] || [:sedan, :jeep, :truck, :hatchback].sample
    @mass = params[:mass] || rand(1500..6000)
    @hp = params[:hp] || rand(70..150)
    @volume = params[:volume] || rand(700..8000)
    @fuel_type = params[:fuel_type] || [:gas, :diesel, :kerosine, :ethanol, :coal_tar].sample
    @state = params[:state] || :stop
    @speed = params[:speed] || 0
  end

  def stop
    @state = :stop
    @speed = 0
  end

  def accelerate
    @state = :move
    @speed += rand(1..50)
  end

  def to_s
    "Тип авто: #{@type},
    цвет: #{@color},
    объем двигателя: #{@volume} см3,
    топливо: #{@fuel_type},
    масса: #{@mass} кг.,
    лошадиные силы: #{@hp},
    состояние: #{@state},
    скорость: #{@speed}
  ===================="
  end

end

states = [:stop, :accelerate]
cars = Array.new(10) { Car.new }
cars.each do |car|
  car.send(states.sample)
  puts car
end
