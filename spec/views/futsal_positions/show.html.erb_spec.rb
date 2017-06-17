require 'rails_helper'

RSpec.describe "futsal_positions/show", type: :view do
  before(:each) do
    @futsal_position = assign(:futsal_position, FutsalPosition.create!(
      :name => "Name",
      :abbreviation => "Abbreviation"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Abbreviation/)
  end
end
