require("minitest/autorun")
require("minitest/rg")
require_relative("../fish.rb")

class TestFish < MiniTest::Test
  def setup
    @fish = Fish.new("Nemo")
  end

  def test_get_fish_name
    assert_equal("Nemo", @fish.fish_name)
  end
end
