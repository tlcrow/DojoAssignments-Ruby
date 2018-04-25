require_relative 'human'
class Wizard < Human
    def initialize health = 50, intelligence = 25
        super
        @health = health
        @intelligence = intelligence
        return self
    end

    def heal
        self.health = health + 10
        return self
    end

    def fireball(obj)
        obj.health = obj.health - 20 if can_attack(obj)
    end

    def stats
        puts "Health: #{@health}, Intelligence: #{@intelligence}, Strength: #{@strength}, Stealth: #{@stealth}"
    end
end

wizard1 = Wizard.new
wizard2 = Wizard.new
wizard1.fireball wizard2
wizard2.stats
