authors = {
  'Design Patterns in Ruby' => ['Russ Olsen'],
  'Eloquent Ruby' => ['Russ Olsen'],
  'The Well-Grounted Rubyist' => ['David A. Black'],
  'The Ruby Programming Language' => ['David Flanagan', 'Yukihiro Matsumoto'],
  'Metaprogramming Ruby 2' => ['Paolo Perotta'],
  'Ruby Cookbook' => ['Lucas Carlos', 'Leonard Richardson'],
  'Ruby Under a Microscope' => ['Pat Shaughnessy'],
  'Ruby Perfomance Optimization' => ['Alexander Dymo'],
  'The Ruby Way' => ['Haf Fulton', 'Andre Arko']
}

authors_arr = authors.values.flatten.uniq
books = {}

authors_arr.each do |author|
  books[author] = authors.select{|k, v| v.include? author}.keys
end
# pp books.class
# puts

books = books.sort_by{|k, v| k }.sort_by{|k, v| v.size }.to_h
pp books
# puts
# pp books.sort{|a, b| a[1].size <=> b[1].size }
# books.each_pair{|k, v | puts "#{k} #{v}" }
