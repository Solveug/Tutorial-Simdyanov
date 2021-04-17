class User

 attr_accessor :name, :patronymic, :surname, :age

  def initialize
  end

  def to_s
    "ФИО: #{@name} #{@patronymic} #{@surname} #{@age}"
  end
end

new_user = User.new
new_user.name = "Alexandra"
new_user.patronymic = "Vladimirovna"
new_user.surname = "Abramova"
new_user.age = 30


puts new_user
