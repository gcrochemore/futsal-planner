class Goal < ApplicationRecord
  resourcify
  
  belongs_to :futsal_game
  belongs_to :team
  belongs_to :goal, :class_name => :User,:foreign_key => "goal_id", optional: true
  belongs_to :assist, :class_name => :User,:foreign_key => "assist_id", optional: true
  belongs_to :goalkeeper, :class_name => :User,:foreign_key => "goalkeeper_id", optional: true
  has_many :goal_marks

  scope :order_by_futsal_game_and_time, -> { includes(:futsal_game).order('futsal_games.date desc, time desc') }
  scope :order_by_time, -> { order('time') }
  scope :top_buts, -> { where(average_mark: 5) }

  def update_average_mark
    self.average_mark = (goal_marks.map{|a| (a.mark ? a.mark : 0)}.sum / goal_marks.map{|a| (a.mark ? 1 : 0)}.sum).to_f.round
    self.save
  end

  def to_s
    self.goal
  end
end
