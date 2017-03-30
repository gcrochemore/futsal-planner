require 'test_helper'

class HighlightTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @highlight_type = highlight_types(:one)
  end

  test "should get index" do
    get highlight_types_url
    assert_response :success
  end

  test "should get new" do
    get new_highlight_type_url
    assert_response :success
  end

  test "should create highlight_type" do
    assert_difference('HighlightType.count') do
      post highlight_types_url, params: { highlight_type: { icon: @highlight_type.icon, name: @highlight_type.name } }
    end

    assert_redirected_to highlight_type_url(HighlightType.last)
  end

  test "should show highlight_type" do
    get highlight_type_url(@highlight_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_highlight_type_url(@highlight_type)
    assert_response :success
  end

  test "should update highlight_type" do
    patch highlight_type_url(@highlight_type), params: { highlight_type: { icon: @highlight_type.icon, name: @highlight_type.name } }
    assert_redirected_to highlight_type_url(@highlight_type)
  end

  test "should destroy highlight_type" do
    assert_difference('HighlightType.count', -1) do
      delete highlight_type_url(@highlight_type)
    end

    assert_redirected_to highlight_types_url
  end
end
