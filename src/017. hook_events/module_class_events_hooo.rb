module M5dule
    class << self
        def included(klass)
            @included ||= []
            @included << klass 
            puts "included: #{@included.inspect}"
        end

        def extended(obj)
            @extended ||= []
            @extended << obj
            puts "extended: #{@extended.inspect}"
        end
    end
end

class SuperClass
    include M5dule

    class << self
        def inherited(subclass)
            @classes ||= []
            @classes << subclass
            puts "inherited: #{@classes.inspect}"
        end
    end
end

class ChildClass < SuperClass

end

SuperClass.new.extend M5dule

# STDOUT
# included: [SuperClass]
# inherited: [ChildClass]
# extended: [#<SuperClass:0x000055b515167f40>]