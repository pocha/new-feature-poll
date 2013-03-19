require 'test_helper'

class PollsControllerTest < ActionController::TestCase
  test "should get show" do
    get :show
    assert_response :success
  end

  test "should get feedback" do
    get :feedback
    assert_response :success
  end

  test "should get thankyou" do
    get :thankyou
    assert_response :success
  end

end
