require 'rails_helper'

RSpec.describe "futsal_trophies/show", type: :view do
  before(:each) do
    @futsal_trophy = assign(:futsal_trophy, FutsalTrophy.create!(
      :name => "Name",
      :points => 2.5,
      :description => "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2.5/)
    expect(rendered).to match(/Description/)
  end
end
