class Hello
  def hello
    time = Time.now
    if (0..5).include? time.hour
      return "Доброй ночи"
    elsif (6..11).include? time.hour
      return "Доброе утро"
    elsif (12..17).include? time.hour
      return "Добрый день"
    else
      return "Добрый вечер"
    end
  end
end
