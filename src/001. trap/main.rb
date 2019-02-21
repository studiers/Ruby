trap :INT do
    puts "get interrupt"
    exit
end

trap :EXIT do
    puts "end of program"
end

loop do
    sleep 1
end