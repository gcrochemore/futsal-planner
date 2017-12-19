require 'rails_helper'

RSpec.describe "nationalities/index", type: :view do
  before(:each) do
    assign(:nationalities, [
      Nationality.create!(
        :name => "Name",
        :abbreviation => "Abbreviation",
        :picture => "Picture"
      ),
      Nationality.create!(
        :name => "Name",
        :abbreviation => "Abbreviation",
        :picture => "Picture"
      )
    ])
  end

  it "renders a list of nationalities" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Abbreviation".to_s, :count => 2
    assert_select "tr>td", :text => "Picture".to_s, :count => 2
  end
end
