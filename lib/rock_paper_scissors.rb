class RockPaperScissors

  # Exceptions this class can raise:
  class NoSuchStrategyError < StandardError ; end

  def self.winner(player1, player2)
    if player1[1] == "S"
      if player2[1] == "R"
        return player2
      elsif player2[1] == "P"
        return player1
      end
      return player1
    elsif player1[1] == "R"
      if player2[1] == "S"
        return player1
      elsif player2[1] == "P"
        return player2
      else
        return player1
      end
    else
      if player2[1] == "S"
        return player2
      elsif player2[1] == "R"
        return player1
      else
        return player1
      end
    end
  end

  def self.tournament_winner(tournament)
    if self.tournament_winner[0][1].class==String
		rps_game_winner(self.tournament_winner)
	else
		round1 = self.tournament_winner(self.tournament_winner[0])
		round2 = self.tournament_winner(self.tournament_winner[1])
		self.tournament_winner([round1,round2])
end
  end
end
