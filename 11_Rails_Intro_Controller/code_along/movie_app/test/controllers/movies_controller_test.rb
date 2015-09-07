require 'test_helper'

class MoviesControllerTest < ActionController::TestCase
  test "should get newindex" do
    get :newindex
    assert_response :success
  end

  test "should get show" do
    get :show
    assert_response :success
  end

  test "should get edit" do
    get :edit
    assert_response :success
  end

end
