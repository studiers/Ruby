tainted_code = File.read('./something')
not_tainted_code = 'puts "Hello Whowhowhowhowho"'

eval not_tainted_code
eval tainted_code

$SAFE = 1  # increase safe level

eval not_tainted_code
eval tainted_code  # `eval': Insecure operation - eval (SecurityError)