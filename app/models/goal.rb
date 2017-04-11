class Goal < ApplicationRecord
  resourcify
  
  belongs_to :futsal_game
  belongs_to :team
  belongs_to :goal, :class_name => :User,:foreign_key => "goal_id"
  belongs_to :assist, :class_name => :User,:foreign_key => "assist_id"
  has_many :marks

  scope :order_by_futsal_game_and_time, -> { includes(:futsal_game).order('futsal_games.date desc, time desc') }
  

  after_save do
    if !self.goal.nil?
      self.goal.update_stats
      self.goal.save
    end
    if !self.assist.nil?
      self.assist.update_stats
      self.assist.save
    end
  end

end
