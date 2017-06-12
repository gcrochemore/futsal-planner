require 'rails_helper'

RSpec.describe "futsal_tournaments/index", type: :view do
  before(:each) do
    assign(:futsal_tournaments, [
      FutsalTournament.create!(
        :duration => 2,
        :futsal_field => nil
      ),
      FutsalTournament.create!(
        :duration => 2,
        :futsal_field => nil
      )
    ])
  end

  it "renders a list of futsal_tournaments" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
