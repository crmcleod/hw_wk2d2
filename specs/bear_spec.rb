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
end