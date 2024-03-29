require 'rails_helper'

RSpec.describe "futsal_game_player_positions/new", type: :view do
  before(:each) do
    assign(:futsal_game_player_position, FutsalGamePlayerPosition.new(
      :game_registration => nil,
      :futsal_position => nil,
      :begin_time => "",
      :end_time => 1,
      :duration => 1
    ))
  end

  it "renders new futsal_game_player_position form" do
    render

    assert_select "form[action=?][method=?]", futsal_game_player_positions_path, "post" do

      assert_select "input#futsal_game_player_position_game_registration_id[name=?]", "futsal_game_player_position[game_registration_id]"

      assert_select "input#futsal_game_player_position_futsal_position_id[name=?]", "futsal_game_player_position[futsal_position_id]"

      assert_select "input#futsal_game_player_position_begin_time[name=?]", "futsal_game_player_position[begin_time]"

      assert_select "input#futsal_game_player_position_end_time[name=?]", "futsal_game_player_position[end_time]"

      assert_select "input#futsal_game_player_position_duration[name=?]", "futsal_game_player_position[duration]"
    end
  end
end
