class GameRegistration < ApplicationRecord
  belongs_to :user
  belongs_to :fustal_game
  belongs_to :team
end
