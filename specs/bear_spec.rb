require("minitest/autorun")
require("minitest/rg")
require_relative("../bear.rb")
require_relative("../river.rb")
require_relative("../fish.rb")

class TestBear < MiniTest::Test
  def setup
    @bear = Bear.new("Yogi")
    @fish1 = Fish.new("Haddock")
    @fish2 = Fish.new("Salmon")
    @fish3 = Fish.new("Trout")
    @fish4 = Fish.new("Cod")
    fishes = [@fish1, @fish2, @fish3, @fish4]
    @river = River.new("Forth", fishes)
  end

  def test_get_bear_name
    assert_equal("Yogi", @bear.bear_name)
  end

  def test_bear_catch_fish
    @bear.catch_fish(@river.river_fish)
    assert_equal(1, @bear.bear_stomach.length)
    assert_equal(3, @river.river_fish.length)
  end

  def test_bear_roar
    assert_equal("Raaaaaaar", @bear.bear_roar("Raaaaaaar", @river))
    assert_equal(0, @river.river_fish.length)
  end

  def test_food_count
    @bear.catch_fish(@river.river_fish)
    @bear.catch_fish(@river.river_fish)
    assert_equal(2, @bear.food_count)
  end
end
