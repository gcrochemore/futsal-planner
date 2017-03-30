require 'test_helper'

class HighlightsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @highlight = highlights(:one)
  end

  test "should get index" do
    get highlights_url
    assert_response :success
  end

  test "should get new" do
    get new_highlight_url
    assert_response :success
  end

  test "should create highlight" do
    assert_difference('Highlight.count') do
      post highlights_url, params: { highlight: { author_id: @highlight.author_id, futsal_game_id: @highlight.futsal_game_id, highlight_type_id: @highlight.highlight_type_id, name: @highlight.name, team_id: @highlight.team_id, time: @highlight.time, victim_id: @highlight.victim_id } }
    end

    assert_redirected_to highlight_url(Highlight.last)
  end

  test "should show highlight" do
    get highlight_url(@highlight)
    assert_response :success
  end

  test "should get edit" do
    get edit_highlight_url(@highlight)
    assert_response :success
  end

  test "should update highlight" do
    patch highlight_url(@highlight), params: { highlight: { author_id: @highlight.author_id, futsal_game_id: @highlight.futsal_game_id, highlight_type_id: @highlight.highlight_type_id, name: @highlight.name, team_id: @highlight.team_id, time: @highlight.time, victim_id: @highlight.victim_id } }
    assert_redirected_to highlight_url(@highlight)
  end

  test "should destroy highlight" do
    assert_difference('Highlight.count', -1) do
      delete highlight_url(@highlight)
    end

    assert_redirected_to highlights_url
  end
end
