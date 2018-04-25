require_relative 'human'
class Ninja < Human
    def initialize stealth = 175
        super
        @stealth = stealth
    end

    def steal obj
        @health = @health + 10
        obj.health = obj.health - 10 if can_attack(obj)
    end

    def get_away
        @health = @health - 15
    end
end

ninja1 = Ninja.new
ninja2 = Ninja.new
ninja1.steal ninja2
ninja2.get_away
ninja1.stats
ninja2.stats