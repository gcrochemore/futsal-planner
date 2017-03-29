class GameRegistration < ApplicationRecord
  belongs_to :user
  belongs_to :futsal_game
  belongs_to :team
end
