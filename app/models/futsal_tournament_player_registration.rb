class FutsalTournamentPlayerRegistration < ApplicationRecord
  belongs_to :futsal_tournament
  belongs_to :team
  belongs_to :user

  before_save :update_stats

  scope :order_by_stats, -> { order('goal desc, assist desc') }

  scope :order_by_users_stats, -> { includes(:user).order('users.goal_average_by_match desc') }

  scope :order_by_users_rating, -> { includes(:user).order('users.rating desc') }

  def update_stats
    self.goal = self.futsal_tournament.goal_by_user(self.user).length
    self.assist = self.futsal_tournament.assist_by_user(self.user).length
  end
end
