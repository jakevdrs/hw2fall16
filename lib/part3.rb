class Dessert
  attr_accessor :name
  attr_accessor :calories

  def initialize(name, calories)
    # YOUR CODE HERE
    @name = name
    @calories = calories
  end
  
  def healthy?
    # YOUR CODE HERE
    return false unless calories < 200
  end
  
  def delicious?
    # YOUR CODE HERE
    return true
  end
end

class JellyBean < Dessert
  attr_accessor :flavor
  
  def initialize(name, calories, flavor)
    # YOUR CODE HERE
  end
  
  def delicious?
    # YOUR CODE HERE
    return true unless flavor == "black licorice"
  end
end
