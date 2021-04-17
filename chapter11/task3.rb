animal = %w[cat dog tiger]
animal_with_t = animal.select{ |e| e.include? 't' }
puts animal_with_t
