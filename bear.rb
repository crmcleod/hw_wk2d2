class Bear

    attr_reader :name
    attr_accessor :stomach
    
    def initialize(name)
        @name = name
        @stomach = []
    end

    def number_of_fish_in_stomach()
        return @stomach.length()
    end

    def eat_fish(fish)
        @stomach << fish
    end

    def eat_fish_from_river(river)
        if for fish in river.fish_in_river()
            eat_fish(fish)
        end
        river.fish_in_river.clear()
    end

end
