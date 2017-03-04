require 'test_helper'

class BigpicturesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bigpicture = bigpictures(:one)
  end

  test "should get index" do
    get bigpictures_url
    assert_response :success
  end

  test "should get new" do
    get new_bigpicture_url
    assert_response :success
  end

  test "should create bigpicture" do
    assert_difference('Bigpicture.count') do
      post bigpictures_url, params: { bigpicture: {  } }
    end

    assert_redirected_to bigpicture_url(Bigpicture.last)
  end

  test "should show bigpicture" do
    get bigpicture_url(@bigpicture)
    assert_response :success
  end

  test "should get edit" do
    get edit_bigpicture_url(@bigpicture)
    assert_response :success
  end

  test "should update bigpicture" do
    patch bigpicture_url(@bigpicture), params: { bigpicture: {  } }
    assert_redirected_to bigpicture_url(@bigpicture)
  end

  test "should destroy bigpicture" do
    assert_difference('Bigpicture.count', -1) do
      delete bigpicture_url(@bigpicture)
    end

    assert_redirected_to bigpictures_url
  end
end
