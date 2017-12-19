require 'rails_helper'

RSpec.describe "nationalities/edit", type: :view do
  before(:each) do
    @nationality = assign(:nationality, Nationality.create!(
      :name => "MyString",
      :abbreviation => "MyString",
      :picture => "MyString"
    ))
  end

  it "renders the edit nationality form" do
    render

    assert_select "form[action=?][method=?]", nationality_path(@nationality), "post" do

      assert_select "input#nationality_name[name=?]", "nationality[name]"

      assert_select "input#nationality_abbreviation[name=?]", "nationality[abbreviation]"

      assert_select "input#nationality_picture[name=?]", "nationality[picture]"
    end
  end
end
