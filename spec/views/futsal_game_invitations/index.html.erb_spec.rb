require 'rails_helper'

RSpec.describe "futsal_game_invitations/index", type: :view do
  before(:each) do
    assign(:futsal_game_invitations, [
      FutsalGameInvitation.create!(
        :futsal_game => nil,
        :user => nil,
        :status => 2,
        :game_registration => nil
      ),
      FutsalGameInvitation.create!(
        :futsal_game => nil,
        :user => nil,
        :status => 2,
        :game_registration => nil
      )
    ])
  end

  it "renders a list of futsal_game_invitations" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
