class Pokemon

  attr_accessor :name, :type, :db
  attr_reader :id

  def initialize(name:, type:, db:, id:nil)
    @name = name
    @type = type
    @db = db
    @id = id
  end

  def self.save(name, type, db)
    db.execute("INSERT INTO pokemon (name, type) VALUES (#{name}, #{type})",name, type)
  end
end
