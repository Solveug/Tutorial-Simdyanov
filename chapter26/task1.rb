class User

  attr_accessor :name, :patronimyc, :surname, :email

  def initialize name, patronimyc, surname, email
    @name = name
    @patronimyc = patronimyc
    @surname = surname
    @email = email
    raise UserException, 'Введены некорректные данные' if !check
  end

  def check
    r = /[а-яёА-ЯЁ]+/
    (@name.match? r) &&
    # (@patronimyc.match? r) &&
    # (@surname.match? r) &&
    (@email.match? r)
  end
end

class UserException < RuntimeError
end

begin
  u = User.new "Иван", "Петрович", "Николай", "cvbn@cvbnm"

rescue UserException => e
  puts e.message
end
