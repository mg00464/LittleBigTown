require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get home_home_url
    assert_response :success

    assert_select 'title', 'Little Big Town'
    assert_select 'h1', 'welcome to my web app'
  end
end
