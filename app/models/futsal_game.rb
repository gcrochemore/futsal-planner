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
  has_many :futsal_game_invitations

  accepts_nested_attributes_for :game_registrations
  accepts_nested_attributes_for :futsal_game_player_positions
  accepts_nested_attributes_for :futsal_game_invitations

  default_scope { order('date desc') }

  def futsal_game_player_positions
    FutsalGamePlayerPosition.where('game_registration_id IN (?)', self.game_registrations.pluck(:id))
  end

  def match_result(team)
    result = ""
    if !(team_home.nil? || team_outside.nil? || score_home.nil? || score_outside.nil?)
      if score_home == score_outside
        result = 0
      elsif (score_home > score_outside && team_home == team) || (score_outside > score_home && team_outside == team)
        result = 1
      else
        result = -1
      end
    end
    return result
  end

  def team_home_players
    game_registrations.where(team: team_home).includes(:user)
  end

  def game_registrations_by_team team
    game_registrations.where(team: team).includes(:user)
  end

  def team_outside_players
    game_registrations.where(team: team_outside).includes(:user)
  end  

  def team_less_players
    game_registrations.where(team: nil).includes(:user)
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
    goals.where(team: team)
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

  def to_s_welcome_page
    "<strong>" + date.strftime("%H:%M") + "</strong><br>" + to_s_team_and_score_welcome
  end

  def to_s_team_and_score_welcome
    team_home.andand.name + "<strong> " + score_home.to_s + " - " + score_outside.to_s + " </strong>" + team_outside.andand.name
  end  

  def to_s_team_and_score
    team_home.andand.name + " " + score_home.to_s + " - " + score_outside.to_s + " " + team_outside.andand.name
  end  

  def has_highlights_or_goals
    ((highlights.length > 0) || (goals.length > 0))
  end

  def highlights_and_goals
    (highlights.includes(:victim) + goals.includes(:goal).includes(:assist).includes(:goalkeeper)).sort! { |a,b| a.time <=> b.time }
  end

  def goal_and_change_by_team_and_position(team, team_2, position_id)
    (
      goals.where(team_id: team.id).includes(:goal).includes(:assist) +
      FutsalGamePlayerPositionChange.where('(game_registration_player_in_id IN (?) OR game_registration_player_out_id IN (?)) AND futsal_position_id = ?', self.game_registrations_by_team(team_2.id).pluck(:id), self.game_registrations_by_team(team_2.id).pluck(:id), position_id)
    ).sort! { |a,b| a.time <=> b.time }
  end

  def highlights_and_goals_and_change
    (
      highlights.includes(:victim) + goals.includes(:goal).includes(:assist) +
      FutsalGamePlayerPositionChange.where('game_registration_player_in_id IN (?) OR game_registration_player_out_id IN (?)', self.game_registrations.pluck(:id), self.game_registrations.pluck(:id))
    ).sort! { |a,b| a.time <=> b.time }
  end

  def highlights_and_goals_by_team team_id
    (highlights.where(team_id: team_id).includes(:victim) + goals.where(team_id: team_id).includes(:goal).includes(:assist).includes(:goalkeeper)).sort! { |a,b| a.time <=> b.time }
  end

  def highlights_and_goals_and_change_by_team team_id
    (
      highlights.where(team_id: team_id).includes(:victim) + goals.where(team_id: team_id).includes(:goal).includes(:assist) +
      FutsalGamePlayerPositionChange.where('game_registration_player_in_id IN (?) OR game_registration_player_out_id IN (?)', self.game_registrations_by_team(team_id).pluck(:id), self.game_registrations_by_team(team_id).pluck(:id))
    ).sort! { |a,b| a.time <=> b.time }
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

  def futsal_game_player_position_by_team_and_position(team, position_id)
    FutsalGamePlayerPosition.where('game_registration_id IN (?) AND futsal_position_id = ?', game_registrations.where(team: team).pluck(:id), position_id).order(:futsal_position_id, :begin_time)
  end

  def futsal_game_player_position_and_change_by_team(team)
    (
      FutsalGamePlayerPosition.where('game_registration_id IN (?)', game_registrations.where(team: team).pluck(:id)) +
      FutsalGamePlayerPositionChange.where('game_registration_player_in_id IN (?) OR game_registration_player_out_id IN (?)', self.game_registrations_by_team(team).pluck(:id), self.game_registrations_by_team(team).pluck(:id))
    ).sort! { |a,b| (a.begin_time <=> b.begin_time) && (a.end_time <=> b.end_time) }
  end

  def change_team_home(team)

    GameRegistration.where(futsal_game: self.id, team: self.team_home.id).update_all(team_id: team.id)

    self.highlights_and_goals_by_team(self.team_home.id).each do |highlight|
      highlight.team = team
      highlight.save
    end

    self.team_home = team
    self.save
  end

  def change_team_outside(team)

    GameRegistration.where(futsal_game: self.id, team: self.team_outside.id).update_all(team_id: team.id)

    self.highlights_and_goals_by_team(self.team_outside.id).each do |highlight|
      highlight.team = team
      highlight.save
    end

    self.team_outside = team
    self.save
  end

  def get_game_registration_with_player_footbar_name(footbar_name)
    self.game_registrations.where(player_footbar_name: footbar_name).first
  end
end
