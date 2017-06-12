class GameRegistration < ApplicationRecord
  resourcify
  
  belongs_to :user
  belongs_to :futsal_game
  belongs_to :team

  before_save :update_stats
  after_save :update_user_stat

  scope :order_by_stats, -> { order('goal desc, assist desc') }

  scope :order_by_users_stats, -> { includes(:user).order('users.goal_average_by_match desc') }

  scope :order_by_futsal_game, -> { includes(:futsal_game).order('futsal_games.date desc') }

  def update_stats
    self.goal = self.futsal_game.goal_by_user(self.user).length
    self.assist = self.futsal_game.assist_by_user(self.user).length
  end

  def update_user_stat
    if self.user
      self.user.update_stats
      self.user.save
    end
  end

  def match_result
    self.futsal_game.match_result(self.team)
  end
end
