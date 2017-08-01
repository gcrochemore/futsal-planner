class FutsalTournament < ApplicationRecord
  has_many :futsal_tournament_team_registrations
  has_many :futsal_tournament_player_registrations
  has_many :futsal_games
  belongs_to :futsal_field

  belongs_to :winner, :class_name => :Team, :foreign_key => "winner_id", optional: true
  belongs_to :best_goalkeeper, :class_name => :FutsalTournamentPlayerRegistration, :foreign_key => "best_goalkeeper_id", optional: true
  belongs_to :best_scorer, :class_name => :FutsalTournamentPlayerRegistration, :foreign_key => "best_scorer_id", optional: true
  belongs_to :best_passer, :class_name => :FutsalTournamentPlayerRegistration, :foreign_key => "best_passer_id", optional: true
  belongs_to :best_goal, :class_name => :Goal,:foreign_key => "best_goal_id", optional: true
  belongs_to :more_substitute, :class_name => :FutsalTournamentPlayerRegistration, :foreign_key => "more_substitute_id", optional: true
  belongs_to :more_player, :class_name => :FutsalTournamentPlayerRegistration, :foreign_key => "more_player_id", optional: true
  belongs_to :bigger_fault, :class_name => :Highlight, :foreign_key => "bigger_fault_id", optional: true
  belongs_to :best_injury, :class_name => :Highlight, :foreign_key => "best_injury_id", optional: true
  belongs_to :more_fair_play, :class_name => :Team, :foreign_key => "more_fair_play_id", optional: true

  def update_stats
    self.winner = futsal_tournament_team_registrations.order('futsal_tournament_team_registrations.points desc,
                                                            futsal_tournament_team_registrations.match_goal_difference desc,
                                                            futsal_tournament_team_registrations.match_goal_for desc').first.team
    self.best_scorer = futsal_tournament_player_registrations.order('futsal_tournament_player_registrations.goal desc, 
                                                                      futsal_tournament_player_registrations.assist desc, 
                                                                      futsal_tournament_player_registrations.goalkeeper_goal_against asc').first
    self.best_passer = futsal_tournament_player_registrations.order('futsal_tournament_player_registrations.assist desc, 
                                                                      futsal_tournament_player_registrations.goal desc, 
                                                                      futsal_tournament_player_registrations.goalkeeper_goal_against asc').first
    self.best_goalkeeper = futsal_tournament_player_registrations.where("goalkeeper_duration > ?", ((self.duration * 60) /3).round).first

    self.more_player = futsal_tournament_player_registrations.order("player_duration DESC, goal ASC, assist ASC, goalkeeper_goal_against ASC").first

    self.more_substitute = futsal_tournament_player_registrations.order("substitute_duration DESC, goal ASC, assist ASC, goalkeeper_goal_against ASC").first
  end

  def goal_by_user(user)
    Goal.where(goal: user).where('futsal_game_id IN (?)', self.futsal_games.pluck(:id))
  end    

  def assist_by_user(user)
    Goal.where(assist: user).where('futsal_game_id IN (?)', self.futsal_games.pluck(:id))
  end    

  def goal_against_by_user(user)
    Goal.where(goalkeeper: user).where('futsal_game_id IN (?)', self.futsal_games.pluck(:id))
  end    

  def team_player(team)
    futsal_tournament_player_registrations.where(team_id: team).order('futsal_tournament_player_registrations.goal desc, 
                                                                      futsal_tournament_player_registrations.assist desc, 
                                                                      futsal_tournament_player_registrations.goalkeeper_goal_against asc')
  end  

  def game_registration_by_user(user)
    GameRegistration.where('user_id = ? AND futsal_game_id IN (?)', user.id, self.futsal_games.pluck(:id))
  end

  def raking
    futsal_tournament_team_registrations.order('futsal_tournament_team_registrations.points desc,
                                              futsal_tournament_team_registrations.match_goal_difference desc,
                                              futsal_tournament_team_registrations.match_goal_for desc')
  end    

  def futsal_game(team)
    futsal_games.where('team_home_id = ? or team_outside_id = ?', team.id, team.id)
  end  

  def team_less_players
    futsal_tournament_player_registrations.where(team: nil)
  end

  def has_stat
    return true
  end
  
  def to_s
    date
  end 
end
