puts 1 <=> 2  # -1
puts 1 <=> 1  # 0
puts 1 <=> 0  # 1

# Sort!
list = [9, 8, 7, 6, 5, 4, 3, 2, 1]
print list.sort {|a, b|
    a <=> b
}