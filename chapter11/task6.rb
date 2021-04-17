week = %w[пн вт ср чт пт сб вс]
week_c = week.select { |e| e.start_with? 'с' }
pp week_c
