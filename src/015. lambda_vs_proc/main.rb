
def run_proc_obj
    proc_obj = proc { puts "proc_obj"; return :inner_value }
    proc_obj.()
    :reachable_test
end

def run_lambda_obj
    lambda_obj = lambda { puts "lambda_obj"; return :inner_value }
    lambda_obj.()
    :reachable_test
end

puts run_proc_obj  # "inner_value" to stdin
puts run_lambda_obj  # "reachable_test" to stdin