## This code needs to be refacto-ed

class SportsTeam
attr_accessor :coach, :points

  def initialize(team_name, team_players, coach)
    @team_name = team_name
    @team_players = team_players
    @coach = coach
    @points = 0
  end

  def team_name
    return @team_name
  end

  def team_players
    return @team_players
  end

  def coach
    return @coach
  end

  def set_new_coach(new_coach)
    return @coach = new_coach
  end


  def add_player(new_player)
    return @team_players << new_player
  end

  def find_player(team_player)
    return @team_players.include?(team_player)
  end

  def play_game(game_won)
      if game_won
        return @points += 1
      end
    end
end
