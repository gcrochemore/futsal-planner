require 'rails_helper'

RSpec.describe "futsal_positions/edit", type: :view do
  before(:each) do
    @futsal_position = assign(:futsal_position, FutsalPosition.create!(
      :name => "MyString",
      :abbreviation => "MyString"
    ))
  end

  it "renders the edit futsal_position form" do
    render

    assert_select "form[action=?][method=?]", futsal_position_path(@futsal_position), "post" do

      assert_select "input#futsal_position_name[name=?]", "futsal_position[name]"

      assert_select "input#futsal_position_abbreviation[name=?]", "futsal_position[abbreviation]"
    end
  end
end
