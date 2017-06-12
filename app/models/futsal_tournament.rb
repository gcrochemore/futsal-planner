class FutsalTournament < ApplicationRecord
  has_many :futsal_tournament_team_registrations
  has_many :futsal_tournament_player_registrations
  has_many :futsal_games
  belongs_to :futsal_field


  def goal_by_user(user)
    Goal.where(goal: user).where('futsal_game_id IN (?)', self.futsal_games.pluck(:id))
  end    

  def assist_by_user(user)
    Goal.where(assist: user).where('futsal_game_id IN (?)', self.futsal_games.pluck(:id))
  end    

  def team_player(team)
    futsal_tournament_player_registrations.where(team_id: team).order('goal desc')
  end 

  def has_stat
    return true
  end
end
