class SportsTeam

  attr_reader :team_name, :players
  attr_accessor :coach

  def initialize(team_name, players, coach)
    @team_name = team_name
    @players = players
    @coach = coach
    @points = 0

  end

  # def get_team_name
  #   return @team_name
  # end

  # def get_players
  #   return @players
  # end
  #
  # def get_coach_name
  #   return @coach
  # end
  #
  # def set_coach(new_name)
  #   @coach = new_name
  # end

  def add_new_player(new_player)
    @players << new_player
  end

  def find_player_by_name(name)
    for player_name in @players
      if player_name == name
        player_found = player_name
      end
    end
    return player_found
  end

def update_points(result)
if result == "win"
  @points += 3
  return
elsif result == "loss"
  return
end
end

def get_points
  return @points
end


end



#HOMEWORK PART A ;

# class CodeclanStudent
#
# def initialize(student_name, cohort, language)
#   @student_name = student_name
#   @cohort = cohort
#   @language = language
# end
#
# def student_name
# return @student_name
# end
#
# def student_cohort
#   return @cohort
# end
#
# def set_student_name(new_name)
# @student_name = new_name
# end
#
# def set_cohort(new_cohort)
#   @cohort = new_cohort
# end
#
# def make_student_talk(phrase)
#   return phrase
# end
#
# def favourite_language()
#   return "I love #{@language}"
# end
#

# Homework PART B...


#
#
#
#
#
#
#
#
#
#
# end
