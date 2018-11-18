class Dessert
  def initialize(name, calories)
  @name = name
  @calories = calories
  end
  attr_accessor :name, :calories
  def healthy?
    if calories < 200
      return true
    end
  end
  def delicious?
    if flavor == licorice
      return false
    else
      return true
    end
    return true
  end
end

class JellyBean < Dessert
  def initialize(flavor)
    @flavor = flavor
  end
    attr_accessor :flavor
end
