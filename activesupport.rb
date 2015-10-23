require 'active_support/all'

array=[0,1,2,3,4,5,6]

puts array.from(4)

options={user: 'codeschool', lang: 'ko'}


puts options.assert_valid_keys(:user, :lang)


def difference_between(player1, player2)
  player1.diff(player2)
end

mario_favorite = {
  sports: "Mario Sports Mix",
  action: "Super Mario World"
}

luigi_favorite = {
  sports: "Golf",
  action: "Super Mario World"
}

# puts difference_between(mario_favorite, luigi_favorite)



def exclude_character(games, character)
  games.except(character)
end

games = {
  mario: ["Super Mario World", "Super Smash Bros. Melee"],
  luigi: ["Luigi's Mansion"],
  yoshi: ["Yoshi's Island", "Yoshi's Story"]
}
puts exclude_character(games, :yoshi)



def describe_count(games)
  return "You have no games" if games.empty?
  return "You have an even number of games" if games.length.even?
  return "You have an odd number of games" if games.length.odd?
end

games = ["Super Mario Bros.", "Contra", "Metroid", "Mega Man 2"]
puts describe_count(games)

def convert_title(title)
  title.titleize
end

puts convert_title("super mario bros.")
