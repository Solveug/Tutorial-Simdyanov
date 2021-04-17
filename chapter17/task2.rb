class User
  attr_accessor :name, :patronimyc, :surname, :email, :role

  def initialize params = {}
    @name = params[:name]
    @patronimyc = params[:patronimyc]
    @surname = params[:surname]
    @email = params[:email]
    @role = :unauthorized
  end

  def to_s
    @role
  end

  alias say to_s
end

class Regular < User

  def initialize params = {}
    super params
    @role = :regular
  end
end

class Author < User

  def initialize params = {}
    super params
    @role = :author
  end
end

class Moderator < User

  def initialize params = {}
    super params
    @role = :moderator
  end
end

class Admin < User

  def initialize params = {}
    super params
    @role = :admin
  end
end

admin1 = Admin.new name: 'Ivan', patronimyc: 'Ivanovoch', surname: 'Ivanov', email: 'asd@gmail.com'
pp admin1
mod1 = Moderator.new name: 'Ivan', patronimyc: 'Ivanovoch', surname: 'Ivanov', email: 'asd@gmail.com'
pp mod1
reg1 = Regular.new name: 'Ivan', patronimyc: 'Ivanovoch', surname: 'Ivanov', email: 'asd@gmail.com'
pp reg1
aut1 = Author.new name: 'Ivan', patronimyc: 'Ivanovoch', surname: 'Ivanov', email: 'asd@gmail.com'
pp aut1
