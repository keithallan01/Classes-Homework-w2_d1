require('minitest/autorun')
require('minitest/rg')
require_relative('../part_b')

class TestSportsTeam < Minitest::Test

  @team_name = "AC Milan"
  @team_players = ["Suso", "Zapata", "Higuain"]
  @Coach = "Gattuso"

  def test_team_name
    sports_team = SportsTeam.new("AC Milan",@team_players, "Gattuso")
    assert_equal("AC Milan", sports_team.team_name)
  end

  def test_team_players
    sports_team = SportsTeam.new("AC Milan",["Suso", "Zapata", "Higuain"], "Gattuso")
    assert_equal(["Suso", "Zapata", "Higuain"], sports_team.team_players)
  end

  def test_coach
    sports_team = SportsTeam.new("AC Milan",["Suso", "Zapata", "Higuain"], "Gattuso")
    assert_equal("Gattuso", sports_team.coach)
  end

  def test_set_coach
    sports_team = SportsTeam.new("AC Milan",["Suso", "Zapata", "Higuain"], "Gattuso")
    sports_team.coach ="Gattuso"
    assert_equal("Gattuso", sports_team.coach)
  end
end
