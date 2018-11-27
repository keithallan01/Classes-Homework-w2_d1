## This code needs to be refacto-ed


require('minitest/autorun')
require('minitest/rg')
require_relative('../part_b')

class TestSportsTeam < Minitest::Test

  @team_name = "AC Milan"
  @team_players = ["Suso", "Zapata", "Higuain"]
  @coach = "Gattuso"
  @points = 0

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

  # def test_set_coach
  #   sports_team = SportsTeam.new("AC Milan",["Suso", "Zapata", "Higuain"], "Gattuso")
  #   sports_team.coach = "Gattuso"
  #   assert_equal("Gattuso", sports_team.coach)
  # end

  def test_set_new_coach
    sports_team = SportsTeam.new("AC Milan",["Suso", "Zapata", "Higuain"], "Gattuso")
    result = sports_team.coach = "Alex McLeish"
    assert_equal("Alex McLeish", result)
  end


  def test_add_player_to_team
    sports_team = SportsTeam.new("AC Milan",["Suso", "Zapata", "Higuain"], "Gattuso")
    sports_team.add_player("Ronaldo")
    result = sports_team.team_players.include?("Ronaldo")
    assert_equal(result, true)
  end
  #
  def test_find_player_by_name__true
    sports_team = SportsTeam.new("AC Milan",["Suso", "Zapata", "Higuain"], "Gattuso")
    result = sports_team.find_player("Suso")
    assert_equal(result, true)
  end

  def test_find_player_by_name__false
    sports_team = SportsTeam.new("AC Milan",["Suso", "Zapata", "Higuain"], "Gattuso")
    result = sports_team.find_player("Henry")
    assert_equal(result, false)
  end

  # def test_points_system
  #   sports_team = SportsTeam.new("AC Milan",["Suso", "Zapata", "Higuain"], "Gattuso")
  #   assert_equal(0, sports_team.points)
  # end
  #
  def test_add_points__win
    sports_team = SportsTeam.new("AC Milan",["Suso", "Zapata", "Higuain"], "Gattuso")
    sports_team.play_game(true)
    assert_equal(1, sports_team.points)
  end

  def test_remove_points__lose
    sports_team = SportsTeam.new("AC Milan",["Suso", "Zapata", "Higuain"], "Gattuso")
    sports_team.play_game(false)
    assert_equal(0, sports_team.points)
    end
  end
