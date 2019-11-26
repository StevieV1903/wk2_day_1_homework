require('minitest/autorun')
require('minitest/reporters')
require_relative('../codeclan_student')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestSportsTeam < MiniTest::Test



  def setup
    @team_name = "Edinburgh"
    @players = ["Jen", "Steve"]
    @coach = "Alex"

  end

  def test_get_team_name
    team = SportsTeam.new(@team_name, @players, @coach)
    assert_equal("Edinburgh", team.team_name())
  end

  def test_get_players_name
    team = SportsTeam.new(@team_name, @players, @coach)
    assert_equal(["Jen", "Steve"], team.players())
  end

  def test_coach_name
    team = SportsTeam.new(@team_name, @players, @coach)
    assert_equal("Alex", team.coach())
  end

  def test_set_coach_name
    team = SportsTeam.new(@team_name, @players, @coach)
    team.coach = "John"
    assert_equal("John", team.coach())
  end

  def test_add_new_player
    team = SportsTeam.new(@team_name, @players, @coach)
    team.add_new_player("Bob")
    assert_equal(3, @players.length)
  end

  def test_find_player_by_name
    team = SportsTeam.new(@team_name, @players, @coach)
    player_name = find_player_by_name(@players)
    assert_equal(true, team.players())
  end

  def test_find_player_by_name
    team = SportsTeam.new(@team_name, @players, @coach)
    assert_equal("Steve", team.find_player_by_name("Steve"))
  end

  def test_add_points_if_won
      team = SportsTeam.new(@team_name, @players, @coach)
      team.update_points("win")
   assert_equal(3, team.get_points)
  end

  def test_add_points_if_loss
      team = SportsTeam.new(@team_name, @players, @coach)
      team.update_points("loss")
   assert_equal(0, team.get_points) 
  end
end









#HOMEWORK PART A;

# class TestCodeclanStudent < MiniTest::Test
#
#   def test_can_get_student_name
# student = CodeclanStudent.new("Jen", "E36", "Ruby")
# assert_equal("Jen", student.student_name())
#   end
#
#   def test_can_get_cohort
# student = CodeclanStudent.new("Steve", "E37", "Ruby")
# assert_equal("E37", student.student_cohort())
# end
#
# def test_can_set_student_name
#   student = CodeclanStudent.new("Jen", "E36", "Ruby")
#   student.set_student_name("Erin")
#   assert_equal("Erin", student.student_name())
# end
#
# def test_can_set_cohort
#   student = CodeclanStudent.new("Alex", "E35","Ruby")
#   student.set_cohort("E34")
#   assert_equal("E34", student.student_cohort())
# end
#
# def test_can_make_student_talk
#   student = CodeclanStudent.new("James", "E36","Ruby")
#   phrase = "I can talk!"
#   assert_equal("I can talk!", student.make_student_talk(phrase))
# end
#
# def test_get_student_favourite_language
#   student = CodeclanStudent.new("James", "E36", "Ruby")
#   assert_equal("I love Ruby", student.favourite_language)
# end
# end
