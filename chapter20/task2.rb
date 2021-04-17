class Rainbow

  def initialize
    colors = {
      red: 'красный',
      orange: 'оранжевый',
      yellow: 'желтый',
      green: 'зеленый',
      blue: 'голубой',
      indigo: 'синий',
      violet: 'фиолетовый'
    }

    colors.each_pair do |k, v|
      define_singleton_method k do
        v
      end
    end
  end
end

t = Rainbow.new
puts t.red
