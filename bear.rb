class Bear
  attr_reader :bear_name, :bear_stomach

  def initialize(input_bear_name)
    @bear_name = input_bear_name
    @bear_stomach = []
  end

  def catch_fish(fishes)
    fish_caught = fishes.sample
    @bear_stomach.unshift(fish_caught)
    fishes.delete(fish_caught)
  end

  def bear_roar(roar)
    return roar
  end

  def food_count
    @bear_stomach.length
  end  

end
