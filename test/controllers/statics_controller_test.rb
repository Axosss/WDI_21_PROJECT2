require 'test_helper'

class StaticsControllerTest < ActionDispatch::IntegrationTest
  test "should get homepage" do
    get statics_homepage_url
    assert_response :success
  end

end
