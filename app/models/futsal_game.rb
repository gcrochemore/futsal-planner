class FutsalGame < ApplicationRecord
  resourcify
  
  belongs_to :futsal_field
  belongs_to :team_home, :class_name => :Team,:foreign_key => "team_home_id"
  belongs_to :team_outside, :class_name => :Team,:foreign_key => "team_outside_id"
 
  has_many :goals
  has_many :game_registrations
  has_many :highlights

  accepts_nested_attributes_for :game_registrations

  default_scope { order('date desc') }

  after_save :update_stats

  def update_stats
    self.game_registrations.each do |game_registration|
      game_registration.update_stats
      game_registration.save
    end
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
    game_registrations.where(team: team_home).order('goal desc')
  end 

  def team_outside_players
    game_registrations.where(team: team_outside).order('goal desc')
  end  

  def team_less_players
    game_registrations.where(team: nil)
  end

  def goal_by_user(user)
    goals.where(goal: user)
  end    

  def assist_by_user(user)
    goals.where(assist: user)
  end    

  def to_s
    date.strftime("%d/%m/%Y %H:%M") + " : " + team_home.andand.name + " vs " + team_outside.andand.name
  end   

  def highlights_and_goals
    (highlights + goals).sort! { |a,b| a.time <=> b.time }
  end

  def has_stat
    !(self.video_link.nil? || self.video_link == "")
  end
end
