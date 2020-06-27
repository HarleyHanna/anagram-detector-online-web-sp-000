class Anagram
  
  @empty_array = []
  
  attr_accessor :word
  
  def initialize(word)
    @word = word
  end
  
  def match(array)
    array.each do |array_word|
      split_word = array_word.split("")
      split_anagram = @word.split("")
      if split_word.sort == split_anagram.sort
        return array_word
      elsif array.last == array_word && split_word.sort != split_anagram.sort
        return @empty_array
      end
    end
end

end
