require 'benchmark'

Benchmark.bm(5, "total:", "avg:") do |x|
    f = x.report("for:") { for i in 1..100000; val = 'value' end }
    w = x.report("while:") { i = 1; while i <= 100000; val = 'value'; i += 1 end }

    total = f + w
    average = total / 2

    [total, average]
end