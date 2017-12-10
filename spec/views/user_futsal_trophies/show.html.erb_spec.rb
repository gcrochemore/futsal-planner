require 'rails_helper'

RSpec.describe "user_futsal_trophies/show", type: :view do
  before(:each) do
    @user_futsal_trophy = assign(:user_futsal_trophy, UserFutsalTrophy.create!(
      :user => nil,
      :futsal_trophy => nil,
      :linked_entity => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
