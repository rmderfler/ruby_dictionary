class Term

  attr_accessor(:word, :definition)

  @@dictionary_list = []

  def initialize(word, definition)
    @word = word
    @definition = definition
    @@dictionary_list << self
  end

  def Term.all   
    @@dictionary_list 
  end

  def Term.clear
    @@dictionary_list = []
  end

  def Term.search(word)
    @@dictionary_list.select {|object| object.word == word}
  end

   def new_definition(new_definition)
    @definition = new_definition
  end
  
end 