class Goal < ApplicationRecord
  belongs_to :futsal_game
  belongs_to :team
  belongs_to :goal, :class_name => :User,:foreign_key => "goal_id"
  belongs_to :assist, :class_name => :User,:foreign_key => "assist_id"
end
