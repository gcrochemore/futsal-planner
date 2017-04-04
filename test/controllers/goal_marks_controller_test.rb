require 'test_helper'

class GoalMarksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @goal_mark = goal_marks(:one)
  end

  test "should get index" do
    get goal_marks_url
    assert_response :success
  end

  test "should get new" do
    get new_goal_mark_url
    assert_response :success
  end

  test "should create goal_mark" do
    assert_difference('GoalMark.count') do
      post goal_marks_url, params: { goal_mark: { goal_id: @goal_mark.goal_id, mac_address: @goal_mark.mac_address, mark: @goal_mark.mark, user_id: @goal_mark.user_id } }
    end

    assert_redirected_to goal_mark_url(GoalMark.last)
  end

  test "should show goal_mark" do
    get goal_mark_url(@goal_mark)
    assert_response :success
  end

  test "should get edit" do
    get edit_goal_mark_url(@goal_mark)
    assert_response :success
  end

  test "should update goal_mark" do
    patch goal_mark_url(@goal_mark), params: { goal_mark: { goal_id: @goal_mark.goal_id, mac_address: @goal_mark.mac_address, mark: @goal_mark.mark, user_id: @goal_mark.user_id } }
    assert_redirected_to goal_mark_url(@goal_mark)
  end

  test "should destroy goal_mark" do
    assert_difference('GoalMark.count', -1) do
      delete goal_mark_url(@goal_mark)
    end

    assert_redirected_to goal_marks_url
  end
end
