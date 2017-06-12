require 'rails_helper'

RSpec.describe "futsal_tournament_player_registrations/show", type: :view do
  before(:each) do
    @futsal_tournament_player_registration = assign(:futsal_tournament_player_registration, FutsalTournamentPlayerRegistration.create!(
      :futsal_tournament => nil,
      :team => nil,
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
