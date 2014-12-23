class Array

 def my_inject(*args)
   copy = self.dup
      if block_given? 
        memo = copy.shift
        copy.each do |item| 
        memo = yield memo, item 
        end
        memo
     else 
        args = true
        symbol = copy.shift
        copy.each do |item|
         symbol = symbol + item
        end
        symbol
     end

  end
    
end
 
