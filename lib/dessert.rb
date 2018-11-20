class Dessert
  def initialize(name, calories)
    @name = name
    @calories = calories
  end

  attr_accessor :name, :calories

  def delicious?
    return true
  end

  def healthy?
    if @calories < 200
      return true
    end
  end

end

class JellyBean < Dessert
  def initialize(flavor)
    	# YOUR CODE HERE
		@flavor = flavor
  	end

  def calories
    @calories = 5
  end

  def name
    @name = "vanilla jelly bean"
  end

	def flavor
		@flavor
	end

	def flavor=(newflavor)
		@flavor = newflavor
  end

  def delicious?
    if flavor == "licorice"
      return false
    else
      return true
    end
  end
end
