group = ThreadGroup.new

(1..10).each do |n|
    thread = Thread.fork n do |n|
        puts n
    end
    group.add thread
end

# 아직까지는 왜 쓰는 건지 싶다 ㅇㅅㅇ..