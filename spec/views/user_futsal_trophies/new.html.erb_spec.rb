require 'rails_helper'

RSpec.describe "user_futsal_trophies/new", type: :view do
  before(:each) do
    assign(:user_futsal_trophy, UserFutsalTrophy.new(
      :user => nil,
      :futsal_trophy => nil,
      :linked_entity => nil
    ))
  end

  it "renders new user_futsal_trophy form" do
    render

    assert_select "form[action=?][method=?]", user_futsal_trophies_path, "post" do

      assert_select "input#user_futsal_trophy_user_id[name=?]", "user_futsal_trophy[user_id]"

      assert_select "input#user_futsal_trophy_futsal_trophy_id[name=?]", "user_futsal_trophy[futsal_trophy_id]"

      assert_select "input#user_futsal_trophy_linked_entity_id[name=?]", "user_futsal_trophy[linked_entity_id]"
    end
  end
end
