require 'test_helper'

class ReportControllerTest < ActionController::TestCase
  test "should get search" do
    get :search
    assert_response :success
  end

  test "should get thank_you" do
    get :thank_you
    assert_response :success
  end

end
