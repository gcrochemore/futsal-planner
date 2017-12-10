require 'rails_helper'

RSpec.describe "user_futsal_trophies/index", type: :view do
  before(:each) do
    assign(:user_futsal_trophies, [
      UserFutsalTrophy.create!(
        :user => nil,
        :futsal_trophy => nil,
        :linked_entity => nil
      ),
      UserFutsalTrophy.create!(
        :user => nil,
        :futsal_trophy => nil,
        :linked_entity => nil
      )
    ])
  end

  it "renders a list of user_futsal_trophies" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
