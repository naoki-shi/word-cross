require 'test_helper'

class MainControllerTest < ActionDispatch::IntegrationTest
  test "should get step1" do
    get main_step1_url
    assert_response :success
  end

end
