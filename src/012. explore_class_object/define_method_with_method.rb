class MyClass
    define_method :my_method, -> { puts "Hello?" }
end

MyClass.new.my_method

# 흠 신기하다! 이걸로 outbound method들이나 다른 모듈의 특정 메소드들은 바인딩할 수 있는 것 같다
# 아직은 잘 모르지만 나중에 언젠가 유용하게 쓰이겠지.. (이런거 큰 프젝 가면 많이.. 쓸거야!)