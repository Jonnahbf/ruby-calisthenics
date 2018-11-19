class Class
  def attr_accessor_with_history(attr_name)
    attr_name = attr_name.to_s # make sure it's a string
    attr_reader attr_name # create the attribute's getter
    attr_reader attr_name+"_history" # create bar_history getter
    class_eval %Q{
      attr_accessor :attr_name
    }
    def foo
      return attr_name
    end

    #setter method
  	def foo=(newname)
  		attr_name = newname
  	end
  end



end
