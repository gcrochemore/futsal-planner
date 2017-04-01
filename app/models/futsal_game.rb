class FutsalGame < ApplicationRecord
  resourcify
  
  belongs_to :futsal_field
  belongs_to :team_home, :class_name => :Team,:foreign_key => "team_home_id"
  belongs_to :team_outside, :class_name => :Team,:foreign_key => "team_outside_id"
 
  has_many :goals
  has_many :game_registrations
  has_many :highlights

  default_scope { order('date desc') }

  def team_home_players
    game_registrations.where(team: team_home)
  end 

  def team_outside_players
    game_registrations.where(team: team_outside)
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
end
