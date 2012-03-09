require File.dirname(__FILE__) + '/spec_helper'

describe Palindrome do 
  context "behaviour definition" do 
    it "should tell if an string is a palindrome" do 
      Palindrome.palindrome?("oso").should == true
      Palindrome.palindrome?("A man, a plan, a canal -- Panama").should == true
      Palindrome.palindrome?("Madam, I'm Adam").should == true
      Palindrome.palindrome?("Abracadabra").should == false
    end
  end
end
