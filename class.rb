class Library
  attr_accessor :games

  def initialize(games)
    self.games = games
  end

  def add_game(game)
    @games = game
    log("Added the game #{game.name}")
  end


  def has_game?(search_game)
    for game in games
      return true if game == search_game
    end
    false
  end

  protected
  def log(message)
    puts message
  end
end





class Game
attr_accessor :name, :year, :system
attr_reader :created_at
def initialize(name, options={})
self.name = name
self.year = options[:year]
self.system = options[:system]
@created_at = Time.now
end

def to_s
  "name : " + self.name
end

def description
    "#{self} was released in #{self.year}."
  end

end


class ArcadeGame < Game
  attr_accessor :weight

  def initialize(name, options={})
    super
    self.weight = options[:weight]
  end
end

class ConsoleGame < Game
  def to_s
    "#{self.name} - #{self.system}"
  end

end

mario = Game.new(
'mario',
system: "ps4",
year: 1990
)

puts mario.to_s

puts mario.system
puts mario.created_at

#library = Library.new

#library.add_game(mario)

ddr = ConsoleGame.new('ddr', system: "console", year:"1998")

puts ddr.description
