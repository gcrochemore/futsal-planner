require 'rails_helper'

RSpec.describe "nationalities/show", type: :view do
  before(:each) do
    @nationality = assign(:nationality, Nationality.create!(
      :name => "Name",
      :abbreviation => "Abbreviation",
      :picture => "Picture"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Abbreviation/)
    expect(rendered).to match(/Picture/)
  end
end
