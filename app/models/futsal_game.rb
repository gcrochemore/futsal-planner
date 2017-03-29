class FutsalGame < ApplicationRecord
  belongs_to :futsal_field
  belongs_to :team_home, :class_name => :Team,:foreign_key => "team_home_id"
  belongs_to :team_outside, :class_name => :Team,:foreign_key => "team_outside_id"
  has_many :goals
  has_many :game_registrations

  default_scope { order('date desc') }

  def team_home_players
    game_registrations.where(team: team_home)
  end 

  def team_outside_players
    game_registrations.where(team: team_outside)
  end    

  def to_s
    date.strftime("%d/%m/%Y %H:%M") + " : " + team_home.andand.name + " vs " + team_outside.andand.name
  end   
end
