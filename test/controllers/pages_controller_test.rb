require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get dashboard" do
    get :dashboard
    assert_response :success
  end

  test "should get project" do
    get :project
    assert_response :success
  end

  test "should get settings" do
    get :settings
    assert_response :success
  end

end
