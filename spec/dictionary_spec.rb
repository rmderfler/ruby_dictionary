require 'rspec'
require 'term'

describe 'Term' do

it 'initializes a new term' do
    new_term = Term.new("new", "shiny")
    expect(new_term).to be_an_instance_of Term
  end
end