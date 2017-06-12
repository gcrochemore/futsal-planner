require 'rails_helper'

RSpec.describe "futsal_tournaments/edit", type: :view do
  before(:each) do
    @futsal_tournament = assign(:futsal_tournament, FutsalTournament.create!(
      :duration => 1,
      :futsal_field => nil
    ))
  end

  it "renders the edit futsal_tournament form" do
    render

    assert_select "form[action=?][method=?]", futsal_tournament_path(@futsal_tournament), "post" do

      assert_select "input#futsal_tournament_duration[name=?]", "futsal_tournament[duration]"

      assert_select "input#futsal_tournament_futsal_field_id[name=?]", "futsal_tournament[futsal_field_id]"
    end
  end
end
