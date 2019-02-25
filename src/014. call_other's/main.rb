class Human
    def eat(food_name)
        puts "I ate #{food_name}"
    end

    def send(attr, *args)
        puts "You can't use send"
    end

    def __send__

    end
end

human = Human.new
human.eat "bob"
human.send(:eat, "bob")