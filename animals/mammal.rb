class Mammal
    attr_accessor :health
    def initialize health = 150
        @health = health
        return self
    end

    def display_health
        puts @health
        return self
    end
end