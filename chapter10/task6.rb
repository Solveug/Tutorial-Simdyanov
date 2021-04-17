# текущее время
time_now = Time.now
# первый день текущего месяца
t1 = Time.mktime(time_now.year, time_now.month, 1)
# первый день следующего месяца, если 12 месяц, то 1 иначе следующий
t2 = Time.mktime(time_now.year, time_now.month == 12 ? 1 : time_now.month + 1, 1)
# разница между датами в днях
t3 = ((t2 - t1) / 60 / 60 / 24).floor
# хеш в котором будем хранить данные
days = {}
# цикл по дням месяца
1.upto(t3) do |n|
  # создадим дату с днем месяца и узнаем, какой это день недели
  t = Time.mktime(time_now.year, time_now.month, n)
  # день недели в сокращенном формате
  dweek = t.strftime("%a")
  # текущий день выделим *
  n = "*#{n}" if n == time_now.mday
  # добавим в уже существующую или создадим новую запись с ключом дня
  days[dweek] ? days[dweek] << n : days[dweek] = [n]
end
# название месяца в формате
puts "\t #{time_now.strftime("%B %Y")}"
# пробежим и выведем ключ - название дня и значение - массив с числами
days.each do |k,v|
  puts " #{k}:\t#{v.join '  '}"
end
# выведем подсказку
puts ' * - current day'
