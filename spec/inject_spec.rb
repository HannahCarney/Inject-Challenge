require 'inject'

describe Array do

  context "with a block" do
    it "can add numbers together" do
      expect([1,2,3,4].inject{|memo, item| memo + item}).to eq 10
      expect([1,2,3,4].my_inject{|memo, item| memo + item}).to eq 10
    end

    it "can minus numbers" do
      expect([1,2,3,4].inject{|memo, item| memo - item}).to eq -8
      # expect([1,2,3,4].my_inject{|memo, item| memo - item}). to eq -8
    end

    it "can multiply numbers" do
      expect([1,2,3,4].inject{|memo, item| memo * item}).to eq 24
    end

    it "can divide numbers and rounds them to integer" do
      expect([1,2,3,4].inject{|memo, item| memo / item}).to eq 0
    end
  end

  context "with a symbol" do 
    it "can add numbers together" do
      expect([1,2,3,4].inject(:+)). to eq 10
    end
    it "can minus numners" do
      expect([1,2,3,4].inject(:-)).to eq -8
    end

    it "can multiply numbers" do
      expect([1,2,3,4].inject(:*)).to eq 24
    end

    it "can divide numbers" do
      expect([1,2,3,4].inject(:/)).to eq 0
    end
  end

  context "with a argument and block" do
    it "can add numbers together with a starting point" do
      expect([1,2,3,4].inject(10){|memo, item| memo + item}).to eq 20
    end

    it "can minus numbers with a starting point" do
      expect([1,2,3,4].inject(10){|memo, item| memo - item}). to eq 0
    end

    it "can multiply numbers with a starting point" do
      expect([1,2,3,4].inject(10){|memo, item| memo * item}).to eq 240
    end

    it "can divide numbers with a starting point" do
      expect([1,2,3,4].inject(10){|memo, item| memo / item}).to eq 0
    end
  end
  
  context "with a symbol and an argument" do
    it "can add with a starting point and a symbol" do
      expect([1,2,3,4].inject(10,:+)).to eq 20
    end

    it "can minus with a starting point and a symbol" do
      expect([1,2,3,4].inject(10, :-)).to eq 0
    end
    
    it "can multiply with a starting point and a symbol" do
      expect([1,2,3,4].inject(10, :*)).to eq 240
    end

    it "can divide numbers with a starting point and a symbol" do
      expect([1,2,3,4].inject(10, :/)).to eq 0
    end    
  end
end