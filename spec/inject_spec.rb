require 'inject'

describe Array do

  context "with a block" do
    it "can add numbers together" do
      expect([1,2,3,4].inject{|memo, item| memo + item}).to eq 10
      expect([1,2,3,4].my_inject{|memo, item| memo + item}).to eq 10
    end


    it "can minus numbers" do
      expect([1,2,3,4].inject{|memo, item| memo - item}).to eq -8
      expect([1,2,3,4].my_inject{|memo, item| memo - item}). to eq -8
    end

    it "can multiply numbers" do
      expect([1,2,3,4].inject{|memo, item| memo * item}).to eq 24
      expect([1,2,3,4].my_inject{|memo, item| memo * item}). to eq 24
    end

    it "can divide numbers and rounds them to integer" do
      expect([1,2,3,4].inject{|memo, item| memo / item}).to eq 0
      expect([1,2,3,4].my_inject{|memo, item| memo / item}). to eq 0
    end

    it "can find the remainder after divided" do
      expect([1,2,3,4].inject{|memo, item| memo % item}).to eq 1
      expect([1,2,3,4].my_inject{|memo, item| memo % item}).to eq 1
    end

    it "can prefrom exponential calculation" do
      expect([1,2,3,4].inject{|memo, item| memo ** item}).to eq 1
      expect([1,2,3,4].my_inject{|memo, item| memo ** item}).to eq 1
    end
  end

  context "with a symbol" do 
    it "can add numbers together" do
      expect([1,2,3,4].inject(:+)). to eq 10
      expect([1,2,3,4].my_inject(:+)). to eq 10
    end
    it "can minus numners" do
      expect([1,2,3,4].inject(:-)).to eq -8
      expect([1,2,3,4].my_inject(:-)).to eq -8

    end

    it "can multiply numbers" do
      expect([1,2,3,4].inject(:*)).to eq 24
      expect([1,2,3,4].my_inject(:*)).to eq 24
    end

    it "can divide numbers" do
      expect([1,2,3,4].inject(:/)).to eq 0
      expect([1,2,3,4].my_inject(:/)).to eq 0
    end

    it "can find the remainder after divided" do
      expect([1,2,3,4].inject(:%)).to eq 1
      expect([1,2,3,4].my_inject(:%)).to eq 1
    end

    it "can prefrom exponential calculation" do
      expect([1,2,3,4].inject(:**)).to eq 1
      expect([1,2,3,4].my_inject(:**)).to eq 1
    end
  end

  # context "with a argument and block" do
  #   it "can add numbers together with a starting point" do
  #     expect([1,2,3,4].inject(10){|memo, item| memo + item}).to eq 20
  #   end

  #   it "can minus numbers with a starting point" do
  #     expect([1,2,3,4].inject(10){|memo, item| memo - item}).to eq 0
  #   end

  #   it "can multiply numbers with a starting point" do
  #     expect([1,2,3,4].inject(10){|memo, item| memo * item}).to eq 240
  #   end

  #   it "can divide numbers with a starting point" do
  #     expect([1,2,3,4].inject(10){|memo, item| memo / item}).to eq 0
  #   end

  #   it "can find the remainder after divided with a starting point" do
  #     expect([1,2,3,4].inject(10){|memo, item| memo % item}).to eq 0
  #   end

  #   it "can prefrom exponential calculation with a starting point" do
  #     expect([2,3].inject(2){|memo, item| memo ** item}).to eq 64
  #   end
  # end
  
  # context "with a symbol and an argument" do
  #   it "can add with a starting point and a symbol" do
  #     expect([1,2,3,4].inject(10,:+)).to eq 20
  #   end

  #   it "can minus with a starting point and a symbol" do
  #     expect([1,2,3,4].inject(10, :-)).to eq 0
  #   end
    
  #   it "can multiply with a starting point and a symbol" do
  #     expect([1,2,3,4].inject(10, :*)).to eq 240
  #   end

  #   it "can divide numbers with a starting point and a symbol" do
  #     expect([1,2,3,4].inject(10, :/)).to eq 0
  #   end

  #   it "can find the remainder after divided" do
  #     expect([1,2,3,4].inject(10, :%)).to eq 0
  #   end

  #   it "can prefrom exponential calculation with symbol and argument" do
  #     expect([2,3].inject(2, :**)).to eq 64
  #   end   
  # end

  # context "can compare numbers to each other" do
  #   it "can check to see if one number is greater than another" do
  #     expect([1,2].inject(:<)).to be true
  #   end

  #   it "can check is less than or equal to" do
  #     expect([2,2].inject(:<=)).to be true
  #   end

    # it "can check to see if two numbers are the same" do
    #   expect([1,1].inject(:==)).to be true
    # end

#     it "can check to see if two numbers are not the same" do
#       expect([1,2].inject(:!=)).to be true
#     end

#     it "can return -1, 0, 1 depending on if numbers are same or different" do
#       expect([1,2].inject(:<=>)). to eq -1
#     end
#   end

#     context "can work with words as well as numnbers" do

#     it "can find the longest word" do
#       expect([:cat, :hat, :mouse].inject{|memo, word| memo.length > word.length ? memo : word}).to eq(:mouse)
#     end



end