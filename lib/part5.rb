class CartesianProduct
  include Enumerable
  
  # YOUR CODE HERE
  attr_accessor :seq_a, :seq_b
  
  def initialize(a,b)
    @seq_a = a
    @seq_b = b
  end
  
  def each #results in XxY
    return to_enum unless block_given?
    @seq_a.each do |a|
      @seq_b.each {|b| yield [a, b]}
    end
  end
end