list = Array.new
list << 1 << 2 << 3 << 4 << 5

puts list.inspect

list.freeze  # 얼음왕국!!!

begin
    list << 6 
rescue FrozenError => frozenError
    puts "자네는 얼음왕국에서 살아야 하네.. ㅎ"
end