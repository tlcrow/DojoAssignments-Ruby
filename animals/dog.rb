require_relative 'mammal'
class Dog < Mammal
    def pet
        @health = @health + 5
        return self
    end

    def walk
       @health = @health - 1
       return self
    end

    def run
        @health = @health - 10
        return self
    end
end
husky = Dog.new.walk.walk.walk.run.run.pet.display_health