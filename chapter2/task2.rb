class User
  #attr_reader :name, :sec_name, :profession

  def initialize name, sec_name, profession
    @name = name
    @sec_name = sec_name
    @profession = profession
  end

  def fio
    puts "Вас зовут #{@name} #{@sec_name}"
  end

  def profession
    puts "Ваша профессия - #{@profession}"
  end
end

print "Enter your name: "
user_name = gets.strip
print "Enter your second name: "
user_sec_name = gets.strip
print "Enter your profession: "
user_prof = gets.strip

user = User.new user_name, user_sec_name, user_prof
user.fio
user.profession
