require 'rails_helper'

RSpec.describe "futsal_tournament_player_registrations/new", type: :view do
  before(:each) do
    assign(:futsal_tournament_player_registration, FutsalTournamentPlayerRegistration.new(
      :futsal_tournament => nil,
      :team => nil,
      :user => nil
    ))
  end

  it "renders new futsal_tournament_player_registration form" do
    render

    assert_select "form[action=?][method=?]", futsal_tournament_player_registrations_path, "post" do

      assert_select "input#futsal_tournament_player_registration_futsal_tournament_id[name=?]", "futsal_tournament_player_registration[futsal_tournament_id]"

      assert_select "input#futsal_tournament_player_registration_team_id[name=?]", "futsal_tournament_player_registration[team_id]"

      assert_select "input#futsal_tournament_player_registration_user_id[name=?]", "futsal_tournament_player_registration[user_id]"
    end
  end
end
