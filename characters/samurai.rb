require_relative 'human'
class Samurai < Human
    @@count = 0
    def initialize health = 200
        super
        @health = health
        @@count = @@count + 1
        return self
    end

    def death_blow obj
        obj.health = 0 if can_attack(obj)
    end

    def meditate
        self.health = 200
        return self
    end

    def how_many
        puts @@count
    end
end

samurai1 = Samurai.new
samurai2 = Samurai.new
samurai1.death_blow(samurai2)
samurai2.stats
samurai2.meditate.how_many

