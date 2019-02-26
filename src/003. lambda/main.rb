say = lambda {|x| puts x}
say.call "Hello"

say = ->(x) { puts x }
say.("Hello")

# labs
puts say.inspect