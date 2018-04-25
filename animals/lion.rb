require_relative 'mammal'
class Lion < Mammal
    def initialize health = 170
        @health = health
        return self
    end
    
    def fly
        @health = @health - 10
        return self
    end

    def attack_town
        @health = @health - 50
        return self
    end

    def eat_humans
        @health = @health + 20
        return self
    end
end
    lion = Lion.new.attack_town.attack_town.attack_town.eat_humans.eat_humans.fly.fly.display_health