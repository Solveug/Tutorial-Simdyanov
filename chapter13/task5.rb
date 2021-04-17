class Time

  def hello
    if (6..11).include? self.hour
      "Доброе утро"
    elsif (12..17).include? self.hour
      "Добрый день"
    elsif (18..23).include self.hour
      "Добрый вечер"
    else
      "Доброй ночи"
    end
  end
end

t = Time.now
puts t.hello
