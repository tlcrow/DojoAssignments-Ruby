class Human
    attr_accessor :strength, :intelligence, :stealth, :health
    
    def initialize strength = 3, intelligence = 3, stealth = 3, health = 100
        @strength = strength
        @intelligence = intelligence
        @stealth = stealth
        @health = health
        return self
    end

    def attack obj
        if can_attack(obj)
            obj.health = obj.health - 10
        else
            puts "Can not attack object"
        end
    end

    private
        def can_attack obj
            obj.class.ancestors.include?(Human)
        end
end