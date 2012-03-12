require File.dirname(__FILE__) + '/spec_helper'

describe Counter do 
  it "should group word sizes inside a hash" do 
    Counter.count_words("Do, dee").should == {'do' => 1, 'dee' => 1}
    Counter.count_words("A man, a plan, a canal -- Panama").should == {"a" => 3, "man" => 1, "plan" => 1, "canal" => 1, "panama" => 1}
    Counter.count_words("Doo bee doo bee doo").should == {"doo" => 3, "bee" => 2}
  end
end
