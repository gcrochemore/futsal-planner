require 'rails_helper'

RSpec.describe "futsal_game_player_positions/show", type: :view do
  before(:each) do
    @futsal_game_player_position = assign(:futsal_game_player_position, FutsalGamePlayerPosition.create!(
      :game_registration => nil,
      :futsal_position => nil,
      :begin_time => "",
      :end_time => 2,
      :duration => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
  end
end
