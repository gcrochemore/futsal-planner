require 'rails_helper'

RSpec.describe "futsal_game_invitations/edit", type: :view do
  before(:each) do
    @futsal_game_invitation = assign(:futsal_game_invitation, FutsalGameInvitation.create!(
      :futsal_game => nil,
      :user => nil,
      :status => 1,
      :game_registration => nil
    ))
  end

  it "renders the edit futsal_game_invitation form" do
    render

    assert_select "form[action=?][method=?]", futsal_game_invitation_path(@futsal_game_invitation), "post" do

      assert_select "input#futsal_game_invitation_futsal_game_id[name=?]", "futsal_game_invitation[futsal_game_id]"

      assert_select "input#futsal_game_invitation_user_id[name=?]", "futsal_game_invitation[user_id]"

      assert_select "input#futsal_game_invitation_status[name=?]", "futsal_game_invitation[status]"

      assert_select "input#futsal_game_invitation_game_registration_id[name=?]", "futsal_game_invitation[game_registration_id]"
    end
  end
end
