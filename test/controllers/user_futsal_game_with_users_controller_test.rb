require 'test_helper'

class UserFutsalGameWithUsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_futsal_game_with_user = user_futsal_game_with_users(:one)
  end

  test "should get index" do
    get user_futsal_game_with_users_url
    assert_response :success
  end

  test "should get new" do
    get new_user_futsal_game_with_user_url
    assert_response :success
  end

  test "should create user_futsal_game_with_user" do
    assert_difference('UserFutsalGameWithUser.count') do
      post user_futsal_game_with_users_url, params: { user_futsal_game_with_user: { draw_against: @user_futsal_game_with_user.draw_against, draw_with: @user_futsal_game_with_user.draw_with, futsal_game: @user_futsal_game_with_user.futsal_game, lose_against: @user_futsal_game_with_user.lose_against, lose_with: @user_futsal_game_with_user.lose_with, match_against: @user_futsal_game_with_user.match_against, match_with: @user_futsal_game_with_user.match_with, other_user_assist: @user_futsal_game_with_user.other_user_assist, other_user_goal: @user_futsal_game_with_user.other_user_goal, other_user_id: @user_futsal_game_with_user.other_user_id, user_assist: @user_futsal_game_with_user.user_assist, user_goal: @user_futsal_game_with_user.user_goal, user_id: @user_futsal_game_with_user.user_id, victory_against: @user_futsal_game_with_user.victory_against, victory_with: @user_futsal_game_with_user.victory_with } }
    end

    assert_redirected_to user_futsal_game_with_user_url(UserFutsalGameWithUser.last)
  end

  test "should show user_futsal_game_with_user" do
    get user_futsal_game_with_user_url(@user_futsal_game_with_user)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_futsal_game_with_user_url(@user_futsal_game_with_user)
    assert_response :success
  end

  test "should update user_futsal_game_with_user" do
    patch user_futsal_game_with_user_url(@user_futsal_game_with_user), params: { user_futsal_game_with_user: { draw_against: @user_futsal_game_with_user.draw_against, draw_with: @user_futsal_game_with_user.draw_with, futsal_game: @user_futsal_game_with_user.futsal_game, lose_against: @user_futsal_game_with_user.lose_against, lose_with: @user_futsal_game_with_user.lose_with, match_against: @user_futsal_game_with_user.match_against, match_with: @user_futsal_game_with_user.match_with, other_user_assist: @user_futsal_game_with_user.other_user_assist, other_user_goal: @user_futsal_game_with_user.other_user_goal, other_user_id: @user_futsal_game_with_user.other_user_id, user_assist: @user_futsal_game_with_user.user_assist, user_goal: @user_futsal_game_with_user.user_goal, user_id: @user_futsal_game_with_user.user_id, victory_against: @user_futsal_game_with_user.victory_against, victory_with: @user_futsal_game_with_user.victory_with } }
    assert_redirected_to user_futsal_game_with_user_url(@user_futsal_game_with_user)
  end

  test "should destroy user_futsal_game_with_user" do
    assert_difference('UserFutsalGameWithUser.count', -1) do
      delete user_futsal_game_with_user_url(@user_futsal_game_with_user)
    end

    assert_redirected_to user_futsal_game_with_users_url
  end
end
