require 'rails_helper'

RSpec.describe "futsal_trophies/index", type: :view do
  before(:each) do
    assign(:futsal_trophies, [
      FutsalTrophy.create!(
        :name => "Name",
        :points => 2.5,
        :description => "Description"
      ),
      FutsalTrophy.create!(
        :name => "Name",
        :points => 2.5,
        :description => "Description"
      )
    ])
  end

  it "renders a list of futsal_trophies" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 2.5.to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
