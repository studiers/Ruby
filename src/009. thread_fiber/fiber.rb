fiber = Fiber.new {
    (1..Float::INFINITY).each do |n|
        Fiber.yield n
    end

}

100.times { puts fiber.resume }

# 클린~, 자주 쓸 듯하다 ㅇㅅㅇ