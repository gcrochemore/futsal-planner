require 'test_helper'

class FutsalFieldsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @futsal_field = futsal_fields(:one)
  end

  test "should get index" do
    get futsal_fields_url
    assert_response :success
  end

  test "should get new" do
    get new_futsal_field_url
    assert_response :success
  end

  test "should create futsal_field" do
    assert_difference('FutsalField.count') do
      post futsal_fields_url, params: { futsal_field: { latitude: @futsal_field.latitude, longitude: @futsal_field.longitude, name: @futsal_field.name } }
    end

    assert_redirected_to futsal_field_url(FutsalField.last)
  end

  test "should show futsal_field" do
    get futsal_field_url(@futsal_field)
    assert_response :success
  end

  test "should get edit" do
    get edit_futsal_field_url(@futsal_field)
    assert_response :success
  end

  test "should update futsal_field" do
    patch futsal_field_url(@futsal_field), params: { futsal_field: { latitude: @futsal_field.latitude, longitude: @futsal_field.longitude, name: @futsal_field.name } }
    assert_redirected_to futsal_field_url(@futsal_field)
  end

  test "should destroy futsal_field" do
    assert_difference('FutsalField.count', -1) do
      delete futsal_field_url(@futsal_field)
    end

    assert_redirected_to futsal_fields_url
  end
end
