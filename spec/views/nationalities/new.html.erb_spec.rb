require 'rails_helper'

RSpec.describe "nationalities/new", type: :view do
  before(:each) do
    assign(:nationality, Nationality.new(
      :name => "MyString",
      :abbreviation => "MyString",
      :picture => "MyString"
    ))
  end

  it "renders new nationality form" do
    render

    assert_select "form[action=?][method=?]", nationalities_path, "post" do

      assert_select "input#nationality_name[name=?]", "nationality[name]"

      assert_select "input#nationality_abbreviation[name=?]", "nationality[abbreviation]"

      assert_select "input#nationality_picture[name=?]", "nationality[picture]"
    end
  end
end
