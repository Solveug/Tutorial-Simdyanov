require './task2.rb'

class Group

  def initialize *users
    @users = *users
  end

  def each
    @users.each {|c| yield c} if block_given?
  end
end

users = Group.new Array.new(10) { User.new 'A', 'B', 'C' }
users.each {|e| puts e}
