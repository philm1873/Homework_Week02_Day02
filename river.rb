class River
  attr_reader :river_name, :river_fish

  def initialize(input_river_name, input_river_fish)
    @river_name = input_river_name
    @river_fish = input_river_fish
  end

  def fish_count
    return @river_fish.length
  end
end
