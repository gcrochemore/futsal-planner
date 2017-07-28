require 'rails_helper'

RSpec.describe "futsal_game_player_positions/index", type: :view do
  before(:each) do
    assign(:futsal_game_player_positions, [
      FutsalGamePlayerPosition.create!(
        :game_registration => nil,
        :futsal_position => nil,
        :begin_time => "",
        :end_time => 2,
        :duration => 3
      ),
      FutsalGamePlayerPosition.create!(
        :game_registration => nil,
        :futsal_position => nil,
        :begin_time => "",
        :end_time => 2,
        :duration => 3
      )
    ])
  end

  it "renders a list of futsal_game_player_positions" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
