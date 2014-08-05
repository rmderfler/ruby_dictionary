require 'rspec'
require 'term'
require 'definition'
describe 'Term' do

  before do
    Term.clear
  end

  it 'initializes a new term' do
    new_term = Term.new("new", "shiny")
    expect(new_term).to be_an_instance_of Term
  end

  it "returns a term's 'word'" do
    new_term = Term.new("new", "shiny")
    expect(new_term.word).to eq "new"
  end

  it "returns a term's definition" do
    new_term = Term.new("new", "shiny")
    expect(new_term.definition).to eq "shiny"
  end

  it "clears the list of terms" do
    new_term = Term.new("new", "shiny")
    new_term2 = Term.new("dog", "pet")
    expect(Term.clear).to eq([])
  end

  it "returns a list of all the terms" do
    new_term = Term.new("new", "shiny")
    new_term2 = Term.new("dog", "pet")
    expect(Term.all).to match_array([new_term, new_term2])
  end

  it "searches for a term according to the word" do
    new_term = Term.new("new", "shiny")
    new_term2 = Term.new("dog", "pet")
    expect(Term.search("new")).to eq [new_term]
  end

  it 'lets user change a definition' do
    new_term = Term.new("new", "shiny")
    new_term.new_definition("modern")
    expect(new_term.definition).to eq("modern")
  end

  it "lets user delete a term with help from the search method" do
    new_term = Term.new("new", "shiny")
    search = Term.search("new")
    Term.delete_term(search[0])
    expect(Term.all).to match_array([])
  end
end

describe 'Definition' do

  it 'initializes a new definition' do
    new_def = Definition.new("new")
    expect(new_def).to be_an_instance_of Definition
  end

  it "returns a definition" do
    new_def = Definition.new("new")
    expect(new_def.definition).to eq "new"
  end

end








