class Definition

attr_accessor(:definition_array, :definition)

@@definition_listings = []

def initialize (definition)
  @definition = definition
  @definition_array = []
  @definition_array << definition
  @@definition_listings << self
end 

def self.all
  @@definition_listings 
end

def self.clear
  @@definition_listings = []
end

def self.find_definition (word)
  @@definition_listings.select {|object| object.definition == word }  
end

def Definition.combine_definitions (def1, def2)
  def1.definition_array.concat(def2.definition_array)
end

end