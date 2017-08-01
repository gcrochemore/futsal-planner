class GameRegistration < ApplicationRecord
  resourcify
  
  belongs_to :user
  belongs_to :futsal_game
  belongs_to :team
  has_many :futsal_game_player_positions

  scope :order_by_stats, -> { order('goal desc, assist desc') }

  scope :order_by_users_stats, -> { includes(:user).order('users.goal_average_by_match desc') }

  scope :order_by_futsal_game, -> { includes(:futsal_game).order('futsal_games.date desc') }

  def update_stats
    self.goal = self.futsal_game.goal_by_user(self.user).length
    self.assist = self.futsal_game.assist_by_user(self.user).length
    #if self.futsal_game.futsal_tournament 
    #  self.futsal_game.futsal_tournament.update_stats
    #end
        # t.integer :goalkeeper_duration
        # t.integer :player_duration
        # t.integer :substitute_duration
    self.goalkeeper_goal_against = self.futsal_game.goalkeeper_goal_against_by_user(self.user).length
    self.goalkeeper_duration = futsal_game_player_positions.where(futsal_position_id: 1).sum(:duration)
    self.substitute_duration = futsal_game_player_positions.where(futsal_position_id: 100).sum(:duration)
    self.player_duration = (self.futsal_game.duration * 60) - self.goalkeeper_duration - self.substitute_duration
  end

  def match_result
    self.futsal_game.match_result(self.team)
  end

  def to_s
    self.user.to_s + ' ' + self.futsal_game.to_s
  end
end
