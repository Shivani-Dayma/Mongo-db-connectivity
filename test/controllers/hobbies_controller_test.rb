require "test_helper"

class HobbiesControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get hobbies_create_url
    assert_response :success
  end
end
