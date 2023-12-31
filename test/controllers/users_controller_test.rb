require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get users_url
    assert_response :success
  end

  test "should get new" do
    get new_user_url
    assert_response :success
  end

  test "should create user" do
    assert_difference("User.count") do
      post users_url, params: { user: { country: @user.country, date_of_birth: @user.date_of_birth, email: @user.email, full_name: @user.full_name, gender: @user.gender, password: @user.password, phone: @user.phone, profession: @user.profession } }
    end

    assert_redirected_to user_url(User.last)
  end

  test "should show user" do
    get user_url(@user)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_url(@user)
    assert_response :success
  end

  test "should update user" do
    patch user_url(@user), params: { user: { country: @user.country, date_of_birth: @user.date_of_birth, email: @user.email, full_name: @user.full_name, gender: @user.gender, password: @user.password, phone: @user.phone, profession: @user.profession } }
    assert_redirected_to user_url(@user)
  end

  test "should destroy user" do
    assert_difference("User.count", -1) do
      delete user_url(@user)
    end

    assert_redirected_to users_url
  end
end
