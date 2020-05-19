require ("minitest/autorun")
require ("minitest/reporters")


Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../bear")
require_relative("../fish")
require_relative("../river")

class FishTest < MiniTest::Test

    def setup()
        @fish = Fish.new("Carp")
    end

    def test_can_create_fish()
        assert_equal(Fish, @fish.class())
    end

    def test_fish_name()
        assert_equal("Carp", @fish.fish_name())
    end

end