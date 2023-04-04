class MyCar
    attr_accessor :colour
    attr_reader :year
    
    def initialize(model, year, colour)
        @model = model
        @year = year
        @colour = colour
        @speed = 0
    end
    
    def accelerate(a)
        @speed += a
        puts "accelerating #{@model} by #{a}"
    end
    
    def brake(b)
        @speed -= b
        puts "decelerating #{@model} by #{b}"
    end
    
    def shutdown
        @speed = 0
        puts "shutting down #{@model}"
    end
    
    def speed
        puts "Your #{@model} is moving at a speed of #{@speed} km/hr"
    end
end