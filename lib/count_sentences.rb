require 'pry'

class String

  def sentence?
    self.end_with?(".") ? true : false
  end

  def question?
    self.end_with?("?") ? true : false
  end

  def exclamation?
    self.end_with?("!") ? true : false
  end

  def count_sentences
    binding.pry
    
    delimiters = ['.', '?', "!"]
    sep = self.split(Regexp.union(delimiters))
    sep.delete("")
    sep.count
    
  end
end