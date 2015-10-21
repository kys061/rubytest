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
end

mario = Game.new(
'mario',
system: "ps4",
year: 1990
)

puts mario.name

puts mario.system
puts mario.created_at

library = Library.new

library.add_game(mario)
