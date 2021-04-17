class User

  def initialize name, patronimyc, surname, points
    @name = name
    @patronimyc = patronimyc
    @surname = surname
    @points = points || []
  end

  def add_point point
    @points << point
  end

  def average
    @points.sum / @points.size
  end

  def to_s
   "ФИО: #{@surname} #{@name} #{@patronimyc} - ср. балл: #{average}, баллы: #{@points.join(',')}"
  end
end

names = %w[Иван Марья Фекла Моисей Мойша Иннокентий]
patronimycs = %w[Иванович Петрович Моисеевич Ромуальдович Павловна]
surnames = %w[Иванов Петров Сидоров Хреново]

users = Array.new(10){User.new names.sample, patronimycs.sample, surnames.sample, Array.new(10){rand(1..5)}}
puts users.sort { |a, b| a.average <=> b.average }.reverse
