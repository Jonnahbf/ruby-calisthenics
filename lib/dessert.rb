class Dessert
  def initialize(name, calories)
    @name = name
    @calories = calories
  end
  def name=(name)
  @name = name
  end
  def name
    return name
  end
  def calories
    return calories
  end
  def calories=(calories)
    @calories = calories
  end

  def delicious?
    return true
  end

  def healthy?
    if calories < 200
      return true
    end
  end

end

class JellyBean < Dessert
  def initialize(flavor)
    	# YOUR CODE HERE
		@flavor = flavor
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
