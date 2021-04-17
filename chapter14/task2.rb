class User

  attr_accessor :surname, :name, :patronimyc

  def initialize surname, name, patronimyc
    @surname = surname
    @name = name
    @patronimyc = patronimyc
  end

  def to_s
    "ФИО: #{@surname} #{@name} #{@patronimyc}"
  end
end
