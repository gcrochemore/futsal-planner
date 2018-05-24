class Team < ApplicationRecord
  resourcify

  validates :name, presence: true, allow_blank: false
  
  belongs_to :company, optional: true
  has_many :goals

  def team_stats
    TeamStats.new(goals: self.goals)
  end

  def to_s
  	name
  end	
end
