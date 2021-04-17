class Integer

  def to_a (base = 2)
    self.to_s(base).split('')
  end

end

pp 10.to_a(8)
