class FutsalGamePlayerPosition < ApplicationRecord
  belongs_to :game_registration
  belongs_to :futsal_position

  before_save :update_duration
  after_save :update_stats

  def update_duration
    self.duration = self.end_time - self.begin_time
  end

  def update_stats    
    self.game_registration.update_stats
  end

  def to_s
    self.game_registration.user + ' ' + self.game_registration.futsal_game
  end
end
