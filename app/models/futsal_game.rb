class FutsalGame < ApplicationRecord
  resourcify
  
  belongs_to :futsal_field
  belongs_to :team_home, :class_name => :Team,:foreign_key => "team_home_id"
  belongs_to :team_outside, :class_name => :Team,:foreign_key => "team_outside_id"
  belongs_to :futsal_tournament, optional: true
 
  has_many :goals
  has_many :game_registrations
  has_many :highlights
  has_many :futsal_game_player_positions

  accepts_nested_attributes_for :game_registrations
  accepts_nested_attributes_for :futsal_game_player_positions

  default_scope { order('date desc') }

  def futsal_game_player_positions
    FutsalGamePlayerPosition.where('game_registration_id IN (?)', self.game_registrations.pluck(:id))
  end

  def match_result(team)
    result = ""
    if !(team_home.nil? || team_outside.nil? || score_home.nil? || score_outside.nil?)
      if score_home == score_outside
        result = "N"
      elsif (score_home > score_outside && team_home == team) || (score_outside > score_home && team_outside == team)
        result = "V"
      else
        result = "D"
      end
    end
    return result
  end

  def team_home_players
    game_registrations.where(team: team_home)
  end 

  def team_outside_players
    game_registrations.where(team: team_outside)
  end  

  def team_less_players
    game_registrations.where(team: nil)
  end

  def player_by_team(team)
    User.where('id IN (?)', self.game_registrations.where(team: team).pluck(:user_id))
  end

  def other_team(team)
    if self.team_home == team
      return self.team_outside
    else
      return self.team_home
    end
  end

  def goal_by_user(user)
    goals.where(goal: user, own_goal: false)
  end 

  def goal_by_team(team)
    goals.where(team: team, own_goal: false)
  end    

  def assist_by_user(user)
    goals.where(assist: user, own_goal: false)
  end    

  def goalkeeper_goal_against_by_user(user)
    goals.where(goalkeeper: user)
  end    

  def to_s
    date.strftime("%d/%m/%Y %H:%M").to_s + " : " + team_home.andand.name.to_s + " vs " + team_outside.andand.name.to_s
  end      

  def to_s_with_only_hour
    date.strftime("%H:%M") + " : " + team_home.andand.name + " vs " + team_outside.andand.name
  end      

  def to_s_team_and_score
    team_home.andand.name + " " + score_home.to_s + " - " + score_home.to_s + " " + team_outside.andand.name
  end  

  def highlights_and_goals
    (highlights.includes(:victim) + goals.includes(:goal).includes(:assist)).sort! { |a,b| a.time <=> b.time }
  end

  def highlights_and_goals_by_team team_id
    (highlights.where(team_id: team_id).includes(:victim) + goals.where(team_id: team_id).includes(:goal).includes(:assist)).sort! { |a,b| a.time <=> b.time }
  end

  def highlights_and_goals_by_user user_id
    (highlights.where('victim_id = ?', user_id).includes(:victim) + goals.where('goal_id = ? or assist_id= ? or goalkeeper_id= ?', user_id, user_id, user_id).includes(:goal).includes(:assist)).sort! { |a,b| a.time <=> b.time }
  end

  def has_stat
    !(self.video_link.nil? || self.video_link == "")
  end

  def rating
    if game_registrations.length > 0
      (game_registrations.map{|a| ((a.user && a.user.rating && !a.user.rating.nan?) ? a.user.rating : 0 )}.sum / game_registrations.map{|a| ((a.user && a.user.rating && !a.user.rating.nan?) ? 1 : 0)}.sum).to_f.round
    else
      0
    end
  end

  def futsal_game_player_position_by_team(team)
    FutsalGamePlayerPosition.where('game_registration_id IN (?)', game_registrations.where(team: team).pluck(:id)).order(:futsal_position_id, :begin_time)
  end
end
