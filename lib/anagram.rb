class Anagram
  
  @empty_array = []
  
  attr_accessor :word
  
  def initialize(word)
    @word = word
  end
  
  def match(array)
    array.each do |array_word|
      word_array = []
      split_word = array_word.split("")
      split_anagram = @word.split("")
      if split_word.sort == split_anagram.sort
        word_array << array_word
      end
      
    end
    
end

end
