require 'rails_helper'

RSpec.describe "futsal_trophies/edit", type: :view do
  before(:each) do
    @futsal_trophy = assign(:futsal_trophy, FutsalTrophy.create!(
      :name => "MyString",
      :points => 1.5,
      :description => "MyString"
    ))
  end

  it "renders the edit futsal_trophy form" do
    render

    assert_select "form[action=?][method=?]", futsal_trophy_path(@futsal_trophy), "post" do

      assert_select "input#futsal_trophy_name[name=?]", "futsal_trophy[name]"

      assert_select "input#futsal_trophy_points[name=?]", "futsal_trophy[points]"

      assert_select "input#futsal_trophy_description[name=?]", "futsal_trophy[description]"
    end
  end
end
