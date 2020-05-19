class River

    attr_reader :river_name
    attr_accessor :fish_in_river

    def initialize(river_name)
        @river_name = river_name
        @fish_in_river = []
    end

    def fish_count()
        return @fish_in_river.length()
    end

    def fish_enter_river(fish)
        @fish_in_river << fish
    end

    def river_empty()
        @fish_in_river.clear()
    end
end
