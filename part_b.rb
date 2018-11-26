class SportsTeam
attr_reader :coach

  def initialize(team_name, team_players, coach)
    @team_name = team_name
    @team_players = team_players
    @coach = coach
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
end
