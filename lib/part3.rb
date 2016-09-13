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
  end
  
  def delicious?
    # YOUR CODE HERE
  end
end

class JellyBean < Dessert
  def initialize(name, calories, flavor)
    # YOUR CODE HERE
  end
  
  def delicious?
    # YOUR CODE HERE
  end
end
