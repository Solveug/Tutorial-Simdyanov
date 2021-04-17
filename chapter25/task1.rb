require 'set'

class Keywords < Set

  def << v
    super v.downcase
  end

  def add v
    super v.downcase
  end
end

kv = Keywords.new
kv.add 'ghjk'
kv.add 'GHJK'
kv << 'ghjkm'
kv << 'GHJKM'
p kv
