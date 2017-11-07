require("minitest/autorun")
require("minitest/rg")
require_relative("../river.rb")
require_relative("../fish.rb")

class TestRiver < MiniTest::Test
  def setup
    @fish1 = Fish.new("Haddock")
    @fish2 = Fish.new("Salmon")
    @fish3 = Fish.new("Trout")
    @fish4 = Fish.new("Cod")
    fishes = [@fish1, @fish2, @fish3, @fish4]
    @river = River.new("Forth", fishes)
  end

  def test_get_river_name
    assert_equal("Forth", @river.river_name)
  end

  def test_fish_count
    assert_equal(4, @river.fish_count)
  end
end
