require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get home_url
    assert_response :success
    # assert_select "title", "Home - Blah"
  end

  test "should get help" do
    get help_url
    assert_response :success
    # assert_select "title", "Help"
  end

  test "should get about" do
    get about_url
    assert_response :success
    # assert_select "title", "About"
  end
end
