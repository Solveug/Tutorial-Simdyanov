class List

  def initialize *params
    @params = *params
  end

  def each
      @params.each {|c| yield c} if block_given?
  end
end

list = List.new 1, 2, 3, 'la-la', 'bla-bla'
list.each { |l| puts l }
