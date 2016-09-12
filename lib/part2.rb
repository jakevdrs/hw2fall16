class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end

def rps_game_winner(game)
  raise WrongNumberOfPlayersError unless game.length == 2
  # YOUR CODE HERE
  raise NoSuchStrategyError unless (game[1] =/[PRS]/i && game[3] =/[PRS]/i)
  throw = game[1]
  if throw=/[P]/i && game[3]=/[S]/
    puts("first case")
    puts(game[2,3].to_s)
    return game[2]
  end
  if throw=/[R]/i && game[3] =/[P]/i
    puts("second case")
    puts game[2,3]
    return game[2]
  end
  if throw=/[S]/i && if game[3] =/[R]/i
    puts("third case")
    puts game[2,3]
    return game[2]
  end
  else
    puts game[0,1]
    puts("base case")
    return game[0,1]
  end
end

def rps_tournament_winner(tournament)
  # YOUR CODE HERE
end

#feel free to add your own helper functions as needed
