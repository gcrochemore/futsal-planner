require 'rails_helper'

RSpec.describe "futsal_game_player_position_changes/edit", type: :view do
  before(:each) do
    @futsal_game_player_position_change = assign(:futsal_game_player_position_change, FutsalGamePlayerPositionChange.create!(
      :futsal_position => nil,
      :time => 1,
      :game_registration_player_in => 1,
      :game_registration_player_out => 1
    ))
  end

  it "renders the edit futsal_game_player_position_change form" do
    render

    assert_select "form[action=?][method=?]", futsal_game_player_position_change_path(@futsal_game_player_position_change), "post" do

      assert_select "input#futsal_game_player_position_change_futsal_position_id[name=?]", "futsal_game_player_position_change[futsal_position_id]"

      assert_select "input#futsal_game_player_position_change_time[name=?]", "futsal_game_player_position_change[time]"

      assert_select "input#futsal_game_player_position_change_game_registration_player_in[name=?]", "futsal_game_player_position_change[game_registration_player_in]"

      assert_select "input#futsal_game_player_position_change_game_registration_player_out[name=?]", "futsal_game_player_position_change[game_registration_player_out]"
    end
  end
end
