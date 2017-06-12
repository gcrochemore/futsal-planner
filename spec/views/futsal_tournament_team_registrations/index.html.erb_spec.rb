require 'rails_helper'

RSpec.describe "futsal_tournament_team_registrations/index", type: :view do
  before(:each) do
    assign(:futsal_tournament_team_registrations, [
      FutsalTournamentTeamRegistration.create!(
        :futsal_tournament => nil,
        :team => nil
      ),
      FutsalTournamentTeamRegistration.create!(
        :futsal_tournament => nil,
        :team => nil
      )
    ])
  end

  it "renders a list of futsal_tournament_team_registrations" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
