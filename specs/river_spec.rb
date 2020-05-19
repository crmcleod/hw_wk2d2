require ("minitest/autorun")
require ("minitest/reporters")


Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../bear")
require_relative("../fish")
require_relative("../river")

class RiverTest < MiniTest::Test
    def setup()
        @river = River.new("Water of Leith")
    end

    def test_can_create_river()
        assert_equal(River, @river.class())
    end

    def test_river_has_name()
        assert_equal("Water of Leith", @river.river_name())
    end
end