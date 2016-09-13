class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end

def rps_game_winner(game)
  raise WrongNumberOfPlayersError unless game.length == 2
  # YOUR CODE HERE
  raise NoSuchStrategyError unless (game[0][1].match(/[PRS]/i) && game[1][1].match(/[PRS]/i))
  throw = game[0][1]
  if throw.match(/[P]/i) && game[1][1].match(/[S]/i)
    #puts("first case")
    #puts(game[1])
    return game[1]
  end
  if throw.match(/[R]/i) && game[1][1].match(/[P]/i)
    #puts("second case")
    #puts game[1]
    return game[1]
  end
  if throw.match(/[S]/i) && if game[1][1].match(/[R]/i)
    #puts("third case")
    #puts game[1]
    return game[1]
  end
  else
    #puts game[0]
    #puts("base case")
    return game[0]
  end
end

def rps_tournament_winner(tournament)
  # YOUR CODE HERE
  if tournament[0][0].is_a? String
    puts(tournament)
    return rps_game_winner(tournament)
  else
    return rps_game_winner([rps_tournament_winner(tournament[0]), rps_tournament_winner(tournament[1])])
  end
end

#feel free to add your own helper functions as needed
