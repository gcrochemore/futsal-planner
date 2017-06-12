require 'rails_helper'

RSpec.describe "futsal_tournament_team_registrations/show", type: :view do
  before(:each) do
    @futsal_tournament_team_registration = assign(:futsal_tournament_team_registration, FutsalTournamentTeamRegistration.create!(
      :futsal_tournament => nil,
      :team => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
