require 'rspec'
require 'term'

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

end