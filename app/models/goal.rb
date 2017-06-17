class Goal < ApplicationRecord
  resourcify
  
  belongs_to :futsal_game
  belongs_to :team
  belongs_to :goal, :class_name => :User,:foreign_key => "goal_id", optional: true
  belongs_to :assist, :class_name => :User,:foreign_key => "assist_id", optional: true
  has_many :goal_marks

  scope :order_by_futsal_game_and_time, -> { includes(:futsal_game).order('futsal_games.date desc, time desc') }
  scope :order_by_time, -> { order('time') }
  
  after_save do
    self.futsal_game.update_stats
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
