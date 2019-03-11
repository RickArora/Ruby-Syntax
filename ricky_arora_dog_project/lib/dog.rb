class Dog

    def initialize(name, breed, age, bark, favorite_foods)
        @name = name
        @breed = breed 
        @age = age 
        @bark = bark
        @favorite_foods = favorite_foods
    end 

    def name()
        @name
    end

    def breed()
        @breed
    end

    def age() 
        @age
    end

    def bark()
        @bark 
    end

    def favorite_foods()
        @favorite_foods
    end

    def age=(age)
        @age = age
    end

    def breed=(breed)
        @breed = breed 
    end

    def name=(name)
        @name = name 
    end

    def favorite_foods=(favorite_foods)
        @favorite_foods = favorite_foods
    end

    def bark=(bark)
        @bark
    end

    def bark()
        if age > 3
            @bark = "BORK!"
        else 
            @bark = "bork!"
        end
        return @bark
    end

    def favorite_food?(food)
        @favorite_foods = @favorite_foods.map(&:downcase)
        return favorite_foods.include?(food.downcase)
    end

end
