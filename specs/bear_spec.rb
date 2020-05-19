require ("minitest/autorun")
require ("minitest/reporters")


Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../bear")
require_relative("../fish")
require_relative("../river")

class BearTest < MiniTest::Test
    def setup()
        @bear = Bear.new("Wojtek")
    end

    def test_can_create_bear()
        assert_equal(Bear, @bear.class())
    end

    def test_bear_can_have_name()
        assert_equal("Wojtek", @bear.name())
    end

    def test_bear_starts_with_empty_stomach()
        assert_equal(0, @bear.number_of_fish_in_stomach())
    end

    def test_bear_can_have_five_fish_in_stomach()
        @bear.eat_fish(@fish_1)
        @bear.eat_fish(@fish_2)
        @bear.eat_fish(@fish_3)
        @bear.eat_fish(@fish_4)
        @bear.eat_fish(@fish_5)
        assert_equal(5, @bear.number_of_fish_in_stomach())
    end

    def test_bear_can_eat_fish_from_river()
        @river1 = River.new("Clyde")
        @river1.fish_enter_river(@fish1)
        @river1.fish_enter_river(@fish2)
        @river1.fish_enter_river(@fish3)
        @river1.fish_enter_river(@fish4)
        @river1.fish_enter_river(@fish5)
        @bear.eat_fish_from_river(@river1)
        assert_equal(5, @bear.number_of_fish_in_stomach())
        assert_equal(0, @river1.fish_count())
    end

    def test_bear_cant_eat_fish_if_river_empty()
        @river2 = River.new("Mississippi")
        @bear.eat_fish_from_river(@river2)
        assert_equal(0, @bear.number_of_fish_in_stomach())
        assert_equal(0, @river2.fish_count())
    end



end