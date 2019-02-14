class Pokemon
  attr_accessor :id, :name, :type, :db
  
  def initialize(id:, name:, type:, db: "pokemon.db")
    @id = id
    @name = name
    @type = type
    @db = db
  end
  
  def self.save(id, name, type)
    self.new(id: id, name: name, type: type, db:)
  end
  
  def self.find(id, x)
  end
  
end