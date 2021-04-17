class Person

  attr_accessor :name, :patronimyc, :surname

  private_class_method :new

    def initialize params = {}
      @name = params[:name] || 'unknown'
      @patronomyc = params[:patronimyc] || 'unknown'
      @surname = params[:surname] || 'unknown'
    end

    def to_s
      "ФИО #{@name} #{@patronimyc} #{@surname}"
    end
end


class User < Person
  public_class_method :new
end

class Admin < Person
  public_class_method :new
end

class Moderator < Person
  public_class_method :new
end

# p1 = Person.new name: 'Ivan', patronimyc: 'Ivanovich', surname: 'Ivanov'
u1 = User.new name: 'Ivan', patronimyc: 'Ivanovich'
a1 = Admin.new surname: 'Ivanov'
m1 = Moderator.new name: 'Ivan', patronimyc: 'Ivanovich', surname: 'Ivanov'

# pp p1
puts u1, a1, m1
