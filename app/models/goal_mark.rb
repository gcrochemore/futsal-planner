class GoalMark < ApplicationRecord
  belongs_to :goal
  belongs_to :user

  after_save do
    self.goal.update_average_mark
  end
end
