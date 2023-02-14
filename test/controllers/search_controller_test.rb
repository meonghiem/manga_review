require 'test_helper'

class SearchControllerTest < ActionDispatch::IntegrationTest
  test "should get get" do
    get search_get_url
    assert_response :success
  end

  test "should get search" do
    get search_search_url
    assert_response :success
  end

end
