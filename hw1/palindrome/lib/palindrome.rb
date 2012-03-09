require "palindrome/version"

module Palindrome

  def self.palindrome?(str)
    str = str.downcase.gsub(/\W+/,"")
    str.reverse == str
  end
end
