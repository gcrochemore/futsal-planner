require 'rails_helper'

RSpec.describe "futsal_tournaments/new", type: :view do
  before(:each) do
    assign(:futsal_tournament, FutsalTournament.new(
      :duration => 1,
      :futsal_field => nil
    ))
  end

  it "renders new futsal_tournament form" do
    render

    assert_select "form[action=?][method=?]", futsal_tournaments_path, "post" do

      assert_select "input#futsal_tournament_duration[name=?]", "futsal_tournament[duration]"

      assert_select "input#futsal_tournament_futsal_field_id[name=?]", "futsal_tournament[futsal_field_id]"
    end
  end
end
