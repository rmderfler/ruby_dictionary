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
end