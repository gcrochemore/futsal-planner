require 'rails_helper'

RSpec.describe "futsal_tournament_player_registrations/index", type: :view do
  before(:each) do
    assign(:futsal_tournament_player_registrations, [
      FutsalTournamentPlayerRegistration.create!(
        :futsal_tournament => nil,
        :team => nil,
        :user => nil
      ),
      FutsalTournamentPlayerRegistration.create!(
        :futsal_tournament => nil,
        :team => nil,
        :user => nil
      )
    ])
  end

  it "renders a list of futsal_tournament_player_registrations" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
