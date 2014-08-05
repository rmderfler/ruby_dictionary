require './lib/term'
require './lib/definition'

Term.clear

def main_menu
  loop do
    puts ""
    puts "A) Add a word"
    puts "B) List words"
    puts "C) Search for a word"
    puts "D) Change a definition"
    puts "E) Delete a word"
    puts "F) Exit"
    puts "G) Get definition"
    input = gets.chomp.upcase

    if input == "A"
      add_word
    elsif input == "B"
      list_words
    elsif input == "C"
      search_word
    elsif input == "D"
      change_def
    elsif input == "E"
      delete_word
    elsif input == "F"
      exit
    elsif input == "G"
      get_def
    else
      puts "try again"
    end

  end
end

def add_word
  puts "enter your word" 
  word_input = gets.chomp.downcase
  puts "enter the definition."
  def_input = gets.chomp.downcase
  new_def = Definition.new(def_input)
  input_term = Term.new(word_input, new_def.definition)
end

def search_word
  puts "enter the word to search for"
  word = gets.chomp.downcase
  search = Term.search(word)
  puts search[0].word
  puts "would you like the definition? (Y or N)"
  input = gets.chomp.upcase
  if input == "Y"
    puts "the definition of #{word} is: " + search[0].definition
  else
  end
end

def list_words
  puts ""
  puts "Here is your word list:"
  list = Term.all
  list.each do |object|
    puts object.word
  end 
end

def change_def
  puts "Enter word"
  input = gets.chomp.downcase
  search = Term.search(input)
  puts "Enter new definition"
  new_def = gets.chomp.downcase
  search[0].new_definition(new_def)
  puts "New definition of #{input}: " + search[0].definition
end


def delete_word
  puts "Enter word to delete"
  input = gets.chomp.downcase
  search = Term.search(input)
  Term.delete_term(search[0])
  list_words
end

def get_def
  puts "Enter word"
  input = gets.chomp.downcase
  search = Term.search(input)
  puts "The definition of #{input} is: " + search[0].definition
end



main_menu