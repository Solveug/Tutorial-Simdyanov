require 'date'

def week(i)
  puts i
end

t = Time.now
i = Date.new(t).cweek

pp Date.now.beginning_of_week
pp Date.now.end_of_week

pp week(t)
