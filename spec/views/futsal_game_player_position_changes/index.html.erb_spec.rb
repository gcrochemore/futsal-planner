require 'rails_helper'

RSpec.describe "futsal_game_player_position_changes/index", type: :view do
  before(:each) do
    assign(:futsal_game_player_position_changes, [
      FutsalGamePlayerPositionChange.create!(
        :futsal_position => nil,
        :time => 2,
        :game_registration_player_in => 3,
        :game_registration_player_out => 4
      ),
      FutsalGamePlayerPositionChange.create!(
        :futsal_position => nil,
        :time => 2,
        :game_registration_player_in => 3,
        :game_registration_player_out => 4
      )
    ])
  end

  it "renders a list of futsal_game_player_position_changes" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
  end
end
