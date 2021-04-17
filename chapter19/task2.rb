class Unit

  attr_accessor :team

  def initialize unit_team
    @unit_count = {team_lead: 1, frontend: 2, backend: 2, qa: 1, designer: 1}
    @team = []
    unit_team.each{ |emp| add_unit emp }
  end


  def list filter = {}
    role = filter[:role]
    if role
      @team.select{|e| e.role == role }.each do |v|
        puts v
      end
    else
      @team.sort{|a, b| a.surname <=> b.surname}.each {|e| puts e}
    end
  end

  def add_unit employee
    if @unit_count[employee.role] > @team.count{|i| i.role == employee.role}
      @team << employee
    end
  end

  def del_unit employee
    @team.delete employee
  end
end


class Employee

  attr_accessor :role, :name, :patronimyc, :surname

  def initialize params = {}
    @role = params[:role]
    @name = params[:name]
    @patronimyc = params[:patronimyc]
    @surname = params[:surname]
  end

  def to_s
    "Должность: #{@role}, ФИО: #{@surname} #{@name} #{@patronimyc}"
  end
end

names = %w[Петя Вася Коля Миша Женя Аркадий Лена Маша Даша]
patronimycs = %w[Иванович Петрович Николаевич Александрович Андреевич Артемович]
surnames = %w[Иванов Петров Сидоров Баранов Козлов Орлов Журавлев Соколов Петухов]
roles = %i[team_lead frontend backend qa designer]

arr = Array.new(20) { Employee.new role: roles.sample, name: names.sample, patronimyc: patronimycs.sample, surname: surnames.sample }

unit = Unit.new arr

puts "Список участников группы:"
unit.list

# print "Выберите номер должности чтобы вывести список участников\n(team_lead: 1, frontend: 2, backend: 3, qa: 4, designer: 5)? "
# user_input = gets.to_i

# unit.list :role => roles[user_input - 1]
puts
tl = unit.team.sample
puts tl
puts
unit.del_unit(tl)
unit.list
