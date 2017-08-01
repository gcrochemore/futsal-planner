class FutsalTournamentPlayerRegistration < ApplicationRecord
  belongs_to :futsal_tournament
  belongs_to :team
  belongs_to :user

  scope :order_by_stats, -> { order('goal desc, assist desc') }

  scope :order_by_users_stats, -> { includes(:user).order('users.goal_average_by_match desc') }

  scope :order_by_users_rating, -> { includes(:user).order('users.rating desc') }

  def update_stats
    self.goal = self.futsal_tournament.goal_by_user(self.user).length
    self.assist = self.futsal_tournament.assist_by_user(self.user).length
    self.goalkeeper_goal_against = self.futsal_tournament.goal_against_by_user(self.user).length

    self.goal_with_assist = 0
    self.goal_without_assist = 0

    futsal_game_duration = (self.futsal_tournament.duration * 60)

    self.goalkeeper_duration = FutsalGamePlayerPosition.where('futsal_position_id = ? AND game_registration_id IN (?)', 1, self.futsal_tournament.game_registration_by_user(self.user).pluck(:id)).sum(:duration)
    self.substitute_duration = FutsalGamePlayerPosition.where('futsal_position_id = ? AND game_registration_id IN (?)', 100, self.futsal_tournament.game_registration_by_user(self.user).pluck(:id)).sum(:duration)
    self.player_duration = futsal_game_duration - self.goalkeeper_duration - self.substitute_duration
    
    self.goalkeeper_goal_against_average = 0

  end
end
