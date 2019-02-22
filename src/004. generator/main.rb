def range(from, to)
    Enumerator.new do |enum|
        while from <= to
            enum.yield from
            from += 1
        end
    end
end

for i in range(1, 10)
    puts i
end