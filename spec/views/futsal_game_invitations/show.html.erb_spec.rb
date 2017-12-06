require 'rails_helper'

RSpec.describe "futsal_game_invitations/show", type: :view do
  before(:each) do
    @futsal_game_invitation = assign(:futsal_game_invitation, FutsalGameInvitation.create!(
      :futsal_game => nil,
      :user => nil,
      :status => 2,
      :game_registration => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/2/)
    expect(rendered).to match(//)
  end
end
