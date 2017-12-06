class FutsalGameInvitation < ApplicationRecord
  belongs_to :futsal_game
  belongs_to :user
  belongs_to :game_registration, optional: true

  enum status: [ :created, :sended, :validated, :refused, :perhaps, :cancel]

  def goal
    user.goal
  end

  def assist
    user.assist
  end

  def player_duration
    1
  end

  def goalkeeper_goal_against
    1
  end

  def goalkeeper_duration
    1
  end

  def player_duration
    1
  end

  def substitute_duration
    1
  end
end
