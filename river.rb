class River

    attr_reader :river_name
    attr_accessor :fish_in_river

    def initialize(river_name)
        @river_name = river_name
        @fish_in_river = []
    end

end
