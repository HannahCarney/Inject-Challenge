class Array

 def my_inject(*args)
   copy = self.dup
   memo = copy.shift
      if block_given? 
        copy.each do |item| 
        memo = yield memo, item 
        end
        memo
     else #args   
        copy.each do |item|
        memo = memo.send(args[0], item)
        end
        memo
     end

  end
    
end
 
