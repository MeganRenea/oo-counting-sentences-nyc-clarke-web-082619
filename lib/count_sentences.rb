require 'pry'

class String

  def sentence?
    self[-1] == "." 
  end

  def question?
    self[-1] == "?"
  end

  def exclamation?
    self[-1] == "!"
  end

  def count_sentences
    str = self.split("?").join(".").split(".").join(".").split("!").join(".").split(".")
    str.reject {|sentence| sentence == ""}.length
  #binding.pry
  end
end