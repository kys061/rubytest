def new_game(name, year = nil, system = nil)
  {
    name: name,
    year: year,
    system: system
  }
end
game = new_game("Street Figher II")
puts game



def new_game2(name, options = {})
  {
    name: name,
    year: options[:year],
    system: options[:system]
  }
end
game2 = new_game2("Street Figher II",
  system: "SNES",
  year: 1992)

puts game2


class InvalidGameError < StandardError; end
def new_game3(name, options={})
  raise InvalidGameError, "you must provide a name for this game." unless name
  {
    name: name,
    year: options[:year],
    system: options[:system]
  }
end

begin
  game3 = new_game3(nil)
rescue InvalidGameError => e
  puts "There was a problem creating your new game: #{e.message}"
end



def describe_favorites(*games)
  for game in games
    puts "Favorite Game: #{game}"
  end
end
describe_favorites('Mario', 'Contra', 'Metroid')


class Game
  def initialize(name, options={})
    @name = name
    @year = options[:year]
    @system = options[:system]
  end

  def name
    @name
  end

  def year
    @year
  end

  def system
    @system
  end
end

list = Game.new('mario')

puts list.name


class Game2
  attr_accessor :name, :year, :system

  def initialize(name, options={})
    @name = name
    @year = options[:year]
    @system = options[:system]
  end
end

list2 = Game2.new('bio hazard!')

puts list2.name
