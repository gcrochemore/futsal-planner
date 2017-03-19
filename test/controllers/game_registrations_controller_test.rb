require 'test_helper'

class GameRegistrationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @game_registration = game_registrations(:one)
  end

  test "should get index" do
    get game_registrations_url
    assert_response :success
  end

  test "should get new" do
    get new_game_registration_url
    assert_response :success
  end

  test "should create game_registration" do
    assert_difference('GameRegistration.count') do
      post game_registrations_url, params: { game_registration: { fustal_game_id: @game_registration.fustal_game_id, team_id: @game_registration.team_id, user_id: @game_registration.user_id } }
    end

    assert_redirected_to game_registration_url(GameRegistration.last)
  end

  test "should show game_registration" do
    get game_registration_url(@game_registration)
    assert_response :success
  end

  test "should get edit" do
    get edit_game_registration_url(@game_registration)
    assert_response :success
  end

  test "should update game_registration" do
    patch game_registration_url(@game_registration), params: { game_registration: { fustal_game_id: @game_registration.fustal_game_id, team_id: @game_registration.team_id, user_id: @game_registration.user_id } }
    assert_redirected_to game_registration_url(@game_registration)
  end

  test "should destroy game_registration" do
    assert_difference('GameRegistration.count', -1) do
      delete game_registration_url(@game_registration)
    end

    assert_redirected_to game_registrations_url
  end
end
