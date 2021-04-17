module RomanNumbers

  def roman
    ones = ["","I","II","III","IV","V","VI","VII","VIII","IX"]
    tens = ["","X","XX","XXX","XL","L","LX","LXX","LXXX","XC"]
    hunds = ["","C","CC","CCC","CD","D","DC","DCC","DCCC","CM"]
    thous = ["","M","MM","MMM","MMMM"]

    t = thous[self / 1000]
    h = hunds[self / 100 % 10]
    te = tens[self / 10 % 10]
    o =  ones[self % 10]

    return t + h + te + o
  end

  # def roman
  #   case self
  #     when  1
  #       'I'
  #     when  2
  #      'I' * 2
  #     when  3
  #       'I' * 4
  #     when  4
  #       'IV'
  #     when 5
  #       'V'
  #     when 6
  #       'VI'
  #     when 7
  #       'VII'
  #     when 8
  #       'VIII'
  #     when 9
  #       'IX'
  #     when 10
  #       'X'
  #     else
  #       'не умею я'
  #   end
  # end
end

class Integer

  include RomanNumbers

end

while true do
  print 'Введите число: '
  user_number = gets.to_i.abs
  break if user_number == 0 || user_number > 3999
  puts user_number.roman
end
