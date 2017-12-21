class GameRegistration < ApplicationRecord
  resourcify
  
  belongs_to :user
  belongs_to :futsal_game
  belongs_to :team, optional: true
  has_many :futsal_game_player_positions
  has_many :user_futsal_trophies, as: :linked_entity

  scope :order_by_stats, -> { order('rating desc') }

  scope :order_by_users_stats, -> { includes(:user).order('users.rating desc') }

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
    self.rating = self.calculate_rating
  end

  def calculate_rating
    player_multiplier = (player_duration > 0 ? (60*60) / player_duration : 1)
    goalkeeper_multiplier = (goalkeeper_duration > 0 ? (60*60) / goalkeeper_duration : 1)

    self.user.calculate_rating(goal: self.goal * player_multiplier, own_goal: 0, assist: self.assist * player_multiplier, goalkeeper_goal_against: self.goalkeeper_goal_against * goalkeeper_multiplier)
 end  

  def own_goal
    0
  end

  def match_result
    self.futsal_game.match_result(self.team)
  end

  def to_s
    self.user.to_s + ' ' + self.futsal_game.to_s
  end
end
