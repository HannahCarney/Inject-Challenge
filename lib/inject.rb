class Array

 def my_inject
    if block_given?
      copy = self.dup #duplicated array [1,2,3,4]
      memo = copy.shift #memo is now set to => 1 in array
      copy.each do |item| #for each item in the array which is now [2,3,4]
        memo = yield memo, item #memo in the array is now memo + item in the block. It does the same thing on each element of array
      end
    memo
    end
  end
    
end
 

# case number

# when add
# when minus