class Definition

attr_accessor(:definition_array, :definition)

@@definition_listings = []

def initialize (definition)
  @definition = definition
  @definition_array = []
  @definition_array << definition
  @@definition_listings << self
end 


end