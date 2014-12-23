class Array

 def my_inject(*args)
    if block_given?
      copy = self.dup
      memo = copy.shift
      item = copy[0]
      copy.each do |item|
      memo = yield memo, item
    end
      end
      memo 
    end
    
end


# case number

# when add
# when minus