require "pry"

class Pokemon
  attr_accessor :id, :name, :type, :db
  
  def initialize(id:, name:, type:, db:)
    @id = id
    @name = name
    @type = type
    @db = db
  end
  
  def self.save(given_name, given_type, db)
    db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)", given_name, given_type)
  end
  
  def self.find(given_id, db)
    new_info = db.execute("SELECT * FROM pokemon WHERE id = (?)", given_id)
    puts new_info
    # binding.pry
    # Pokemon.new(new_info)
  end
  
end