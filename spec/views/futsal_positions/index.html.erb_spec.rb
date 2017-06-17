require 'rails_helper'

RSpec.describe "futsal_positions/index", type: :view do
  before(:each) do
    assign(:futsal_positions, [
      FutsalPosition.create!(
        :name => "Name",
        :abbreviation => "Abbreviation"
      ),
      FutsalPosition.create!(
        :name => "Name",
        :abbreviation => "Abbreviation"
      )
    ])
  end

  it "renders a list of futsal_positions" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Abbreviation".to_s, :count => 2
  end
end
