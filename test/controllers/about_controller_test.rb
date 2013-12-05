require 'test_helper'

class AboutControllerTest < ActionController::TestCase
  test "should get team" do
    get :team
    assert_response :success
  end

end
