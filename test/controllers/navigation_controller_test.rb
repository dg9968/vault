require 'test_helper'

class NavigationControllerTest < ActionController::TestCase
  test "should get about" do
    get :about
    assert_response :success
  end

  test "should get contact" do
    get :contact
    assert_response :success
  end

  test "should get services" do
    get :services
    assert_response :success
  end

  test "should get taxes" do
    get :taxes
    assert_response :success
  end
end