require "counter/version"

module Counter

  def self.count_words(str)
    str.downcase.split(/\W+/).reduce({}) do |result, word|
      result[word] += result[word].nil? ? 1 : result[word]+1
      result
    end
  end
end
