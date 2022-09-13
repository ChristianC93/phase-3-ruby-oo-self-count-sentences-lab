require 'pry'

class String

  def sentence?
    self.end_with?(".")  
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    self.split(/\.|\!|\?/).filter{|string| string != ""}.count
  end
end

complex_string = String.new("This, well, is a sentence. This is too!! And so is this, I think? Woo...")
complex_string.count_sentences

binding.pry