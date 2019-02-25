class OriginalKeyword
    def self.class_method
        puts "Whowhowho"
    end
end

class ClassNameKeyword
    def ClassNameKeyword.class_method
        puts "Whowhowho"
    end
end

OriginalKeyword.class_method
ClassNameKeyword.class_method

# 개인적으로 나는 후자의 방법으로 쓸거다 ㅇㅅㅇ