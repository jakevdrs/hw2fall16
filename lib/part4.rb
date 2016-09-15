class Class

  def attr_accessor_with_history(attr_name)
    attr_name = attr_name.to_s   # make sure it's a string
    #attr_reader attr_name        # create the attribute's getter
    #attr_reader attr_name+"_history" # create bar_history getter
    #class_eval "YOUR CODE HERE, USE %Q FOR MULTILINE STRINGS"
    attr_name_history = attr_name+'_history'
    self.class_eval %Q{
        def #{attr_name}
          @#{attr_name}
        end
    }
    self.class_eval %Q{
        def #{attr_name}=(name)
          @#{attr_name_history} = [nil] if @#{attr_name_history}.nil?
          @#{attr_name_history} << name
          @#{attr_name} = name
        end
        
        def #{attr_name_history}
            @#{attr_name_history}
        end
    }
  end
end

class Foo
  attr_accessor_with_history :bar
  def initialize(value)
    self.bar = value
  end
end