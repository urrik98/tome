require 'test_helper'

class MonographsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @monograph = monographs(:one)
  end

  test "should get index" do
    get monographs_url
    assert_response :success
  end

  test "should get new" do
    get new_monograph_url
    assert_response :success
  end

  test "should create monograph" do
    assert_difference('Monograph.count') do
      post monographs_url, params: { monograph: {  } }
    end

    assert_redirected_to monograph_url(Monograph.last)
  end

  test "should show monograph" do
    get monograph_url(@monograph)
    assert_response :success
  end

  test "should get edit" do
    get edit_monograph_url(@monograph)
    assert_response :success
  end

  test "should update monograph" do
    patch monograph_url(@monograph), params: { monograph: {  } }
    assert_redirected_to monograph_url(@monograph)
  end

  test "should destroy monograph" do
    assert_difference('Monograph.count', -1) do
      delete monograph_url(@monograph)
    end

    assert_redirected_to monographs_url
  end
end
