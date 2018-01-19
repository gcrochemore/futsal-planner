class FutsalGamePlayerPositionChange < ApplicationRecord
  resourcify

  belongs_to :futsal_position

  belongs_to :game_registration_player_in, :class_name => :GameRegistration, :foreign_key => "game_registration_player_in_id", optional: true
  belongs_to :game_registration_player_out, :class_name => :GameRegistration, :foreign_key => "game_registration_player_out_id", optional: true

  def team_id
    return game_registration_player_in.andand.team_id
  end

  def begin_time
    time
  end

  def end_time
    time + 1
  end
end
