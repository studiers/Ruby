class Animal
    @content = "some"

    def initialize
        @content = "some"
    end
    
    def say
        puts @content
    end
end

class Cat < Animal
    def initialize
        @content = "meow"
    end
end

class Dog < Animal
    def initialize
        @content = "mungmung"
    end
end

animal = Animal.new
cat = Cat.new
dog = Dog.new

say = animal.method(:say)
puts say  # STDOUT: #<UnboundMethod: Cat#say>
puts "#{say}'s owner: #{say.owner}"  # the original
puts "#{say}'s parameters: #{say.parameters}"
puts "parameters.length: #{say.arity}"  # parameters.length

say.unbind.bind(dog).()  # STDOUT: mungmung
say.unbind.bind(cat).()  # STDOUT: meow