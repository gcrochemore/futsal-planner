class MatchMakingTeam
  attr_accessor :team
  attr_accessor :players
  attr_accessor :is_valid_team
  attr_accessor :team_1
  attr_accessor :team_1_average_mark
  attr_accessor :team_1_score
  attr_accessor :team_1_last_matchs_rating
  attr_accessor :team_2
  attr_accessor :team_2_average_mark
  attr_accessor :team_2_score
  attr_accessor :team_2_last_matchs_rating
  attr_accessor :team_mark_difference
  attr_accessor :team_score_difference
  attr_accessor :team_last_matchs_rating_difference
  attr_accessor :team_difference
  attr_accessor :team_difference_without_last_matchs_rating

  def initialize(attributes = {})
    self.attributes = attributes
  end

  def attributes=(attributes)
    @team = attributes[:team]
    @players = attributes[:players]
    @is_valid_team = set_valid_team(@team)
    @team_1 = []
    @team_2 = []
    for i in 0..(team.length - 1)
      if self.team[i] == '0' 
        @team_1.push(self.players[i].user)
      else
        @team_2.push(self.players[i].user)
      end
    end
    self.team_1_average_mark = calculate_average_mark(self.team_1)
    self.team_1_score = calculate_score(self.team_1)
    self.team_1_last_matchs_rating = calculate_last_matchs_rating(self.team_1)
    self.team_2_average_mark = calculate_average_mark(self.team_2)
    self.team_2_score = calculate_score(self.team_2)
    self.team_2_last_matchs_rating = calculate_last_matchs_rating(self.team_2)
    self.team_mark_difference = (self.team_1_average_mark - self.team_2_average_mark)
    self.team_score_difference = (self.team_1_score - self.team_2_score)
    self.team_last_matchs_rating_difference = (self.team_1_last_matchs_rating - self.team_2_last_matchs_rating)
    self.team_difference = self.team_mark_difference.abs + self.team_score_difference.abs + self.team_last_matchs_rating_difference.abs
    self.team_difference_without_last_matchs_rating = self.team_mark_difference.abs + self.team_score_difference.abs
  end

  def calculate_average_mark(team)
    sum = 0
    team.each do |player|
      sum += player.rating
    end
    return sum.to_f / team.count.to_f
  end

  def calculate_score(team)
    sum_goal = 0
    sum_assist = 0
    team.each do |player|
      sum_goal += player.goal_average_by_match.to_f
      sum_assist += player.assist_average_by_match.to_f
    end
    return (sum_goal.to_f < (sum_assist.to_f/0.4991).to_f ? sum_goal.to_f : sum_assist.to_f/0.4991)
  end

  def calculate_last_matchs_rating(team)
    sum = 0
    team.each do |player|
      sum += player.last_matchs_rating
    end
    return sum.to_f / team.count.to_f
  end

  def set_valid_team(team_value)
    (self.team.count("1") == (self.players.count / 2)) && (self.team.length == self.players.count)
  end

  def is_valid_team
    is_valid_team = true
    FutsalPosition.all.each do |futsal_position|
      is_valid_team = is_valid_team & is_valid_team_with_futsal_position(futsal_position)
    end
    is_valid_team
  end

  def is_valid_team_with_futsal_position(futsal_position)
    number_of_player_by_position_for_team_1 = number_of_player_by_position_and_team(team_1, futsal_position)
    number_of_player_by_position_for_team_2 = number_of_player_by_position_and_team(team_2, futsal_position)

    return (number_of_player_by_position_for_team_1 - number_of_player_by_position_for_team_2).abs <= 1
  end

  def number_of_player_by_position_and_team(team, futsal_position)
    number_of_player = 0

    team.each do |user|
      if user.futsal_position.id == futsal_position.id
        number_of_player += 1
      end
    end

    number_of_player
  end
end