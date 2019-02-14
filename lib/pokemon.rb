class Pokemon
  attr_accessor :id, :name, :type, :db
  
  def initialize(id:, name:, type:, db: "pokemon.db")
    @id = id
    @name = name
    @type = type
    @db = db
  end
  
  def self.save(id, name, type)
    # self.new(id: id, name: name, type: type)
    db.execute("INSERT INTO pokemon (id, name, type) VALUES (?, ?, ?)",id, name, type)
  end
  
  # def self.save(name, breed, age, database_connection)
  #   database_connection.execute("INSERT INTO cats (name, breed, age) VALUES (?, ?, ?)",name, breed, age)
  # end
  
  def self.find(id, x)
  end
  
end