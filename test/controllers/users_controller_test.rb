require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "the user method creates a user" do
    post :create, user: {email: "john@example.com", password: 123123}
    assert_redirected_to root_path
  end

  test 'should get destroy user session' do
    get destroy_user_session_path
    assert_response :success
  end
end
