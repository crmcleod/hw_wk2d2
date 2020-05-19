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

end
