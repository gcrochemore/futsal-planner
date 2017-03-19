require 'test_helper'

class FutsalGamesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @futsal_game = futsal_games(:one)
  end

  test "should get index" do
    get futsal_games_url
    assert_response :success
  end

  test "should get new" do
    get new_futsal_game_url
    assert_response :success
  end

  test "should create futsal_game" do
    assert_difference('FutsalGame.count') do
      post futsal_games_url, params: { futsal_game: { date: @futsal_game.date, duration: @futsal_game.duration, score_home: @futsal_game.score_home, score_outside: @futsal_game.score_outside, team_home_id: @futsal_game.team_home_id, team_outside_id: @futsal_game.team_outside_id } }
    end

    assert_redirected_to futsal_game_url(FutsalGame.last)
  end

  test "should show futsal_game" do
    get futsal_game_url(@futsal_game)
    assert_response :success
  end

  test "should get edit" do
    get edit_futsal_game_url(@futsal_game)
    assert_response :success
  end

  test "should update futsal_game" do
    patch futsal_game_url(@futsal_game), params: { futsal_game: { date: @futsal_game.date, duration: @futsal_game.duration, score_home: @futsal_game.score_home, score_outside: @futsal_game.score_outside, team_home_id: @futsal_game.team_home_id, team_outside_id: @futsal_game.team_outside_id } }
    assert_redirected_to futsal_game_url(@futsal_game)
  end

  test "should destroy futsal_game" do
    assert_difference('FutsalGame.count', -1) do
      delete futsal_game_url(@futsal_game)
    end

    assert_redirected_to futsal_games_url
  end
end
