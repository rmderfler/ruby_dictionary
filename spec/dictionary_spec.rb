require 'rspec'
require 'term'

describe 'Term' do

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



end