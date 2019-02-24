threads = (1..10).map {|n|
    Thread.fork n do |n|
        sleep 1
        puts n
    end
}

threads.each &:join

# 3
# 1
# 2
# 4
# 6
# 8
# 5
# 10
# 9
# 7
# 랜덤하게 나온다