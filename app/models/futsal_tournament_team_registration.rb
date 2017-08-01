class FutsalTournamentTeamRegistration < ApplicationRecord
  belongs_to :futsal_tournament
  belongs_to :team

  def update_stats
    self.match_goal_for = 0
    self.match_goal_against = 0

    self.victory = 0
    self.lose = 0
    self.draw = 0

    self.futsal_tournament.futsal_game(team).each do |futsal_game|
      score_pour = (futsal_game.team_home == team) ? futsal_game.score_home :  futsal_game.score_outside
      score_contre = (futsal_game.team_outside == team) ? futsal_game.score_home :  futsal_game.score_outside
      self.match_goal_for = self.match_goal_for + (score_pour ? score_pour : 0)
      self.match_goal_against = self.match_goal_against + (score_contre ? score_contre : 0)
      match_result = futsal_game.match_result(team)
      (match_result == 'V') ? self.victory = self.victory + 1 : (match_result == 'D') ? self.lose = self.lose + 1 : self.draw = self.draw + 1
    end

    self.match_goal_difference = self.match_goal_for - self.match_goal_against

    self.points = self.victory * 3 + self.draw

  end

  def to_s
    futsal_tournament.date.strftime("%d/%m/%Y %H:%M").to_s
  end  
end
