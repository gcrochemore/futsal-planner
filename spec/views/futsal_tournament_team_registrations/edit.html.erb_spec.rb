require 'rails_helper'

RSpec.describe "futsal_tournament_team_registrations/edit", type: :view do
  before(:each) do
    @futsal_tournament_team_registration = assign(:futsal_tournament_team_registration, FutsalTournamentTeamRegistration.create!(
      :futsal_tournament => nil,
      :team => nil
    ))
  end

  it "renders the edit futsal_tournament_team_registration form" do
    render

    assert_select "form[action=?][method=?]", futsal_tournament_team_registration_path(@futsal_tournament_team_registration), "post" do

      assert_select "input#futsal_tournament_team_registration_futsal_tournament_id[name=?]", "futsal_tournament_team_registration[futsal_tournament_id]"

      assert_select "input#futsal_tournament_team_registration_team_id[name=?]", "futsal_tournament_team_registration[team_id]"
    end
  end
end
