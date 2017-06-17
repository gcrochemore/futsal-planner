require 'rails_helper'

RSpec.describe "futsal_positions/new", type: :view do
  before(:each) do
    assign(:futsal_position, FutsalPosition.new(
      :name => "MyString",
      :abbreviation => "MyString"
    ))
  end

  it "renders new futsal_position form" do
    render

    assert_select "form[action=?][method=?]", futsal_positions_path, "post" do

      assert_select "input#futsal_position_name[name=?]", "futsal_position[name]"

      assert_select "input#futsal_position_abbreviation[name=?]", "futsal_position[abbreviation]"
    end
  end
end
