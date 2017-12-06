require 'rails_helper'

RSpec.describe "futsal_game_player_position_changes/show", type: :view do
  before(:each) do
    @futsal_game_player_position_change = assign(:futsal_game_player_position_change, FutsalGamePlayerPositionChange.create!(
      :futsal_position => nil,
      :time => 2,
      :game_registration_player_in => 3,
      :game_registration_player_out => 4
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
  end
end
