require ("minitest/autorun")
require ("minitest/reporters")


Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../bear")
require_relative("../fish")
require_relative("../river")

class RiverTest < MiniTest::Test
    def setup()
        @river = River.new("Water of Leith")
        @fish1 = Fish.new("Roach")
        @fish2 = Fish.new("Eel")
        @fish3 = Fish.new("Bream")
        @fish4 = Fish.new("Minnow")
    end

    def test_can_create_river()
        assert_equal(River, @river.class())
    end

    def test_river_has_name()
        assert_equal("Water of Leith", @river.river_name())
    end

    def test_river_starts_empty()
        assert_equal(0, @river.fish_count())
    end

    def test_remove_fish_from_river()
        @bear1 = Bear.new("Wotjek")

        @river.fish_enter_river(@fish1)
        @river.fish_enter_river(@fish2)
        @bear1.eat_fish(@fish1)
        @river.remove_specific_fish_from_river(@fish1)
        assert_equal(1, @river.fish_count())
    end


    def test_river_is_empty_once_fish_are_all_eaten()
        @river.fish_enter_river(@fish1)
        @river.river_empty()
        assert_equal(0, @river.fish_count())
    end

    def test_river_can_contain_two_fish()
        @river.fish_enter_river(@fish1)
        @river.fish_enter_river(@fish2)
        assert_equal(2, @river.fish_count())
    end
end