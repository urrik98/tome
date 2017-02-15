require 'test_helper'

class NavpageControllerTest < ActionDispatch::IntegrationTest
  test "should get main" do
    get navpage_main_url
    assert_response :success
  end

end
