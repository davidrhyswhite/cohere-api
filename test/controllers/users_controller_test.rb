require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users :valid
  end

  test 'should get index' do
    get users_url

    assert_response 200
    assert_response :success
    assert_response_schema :users, @response
  end

  test 'should create user' do
    assert_difference 'User.count' do
      post users_url, params: { user: { name: @user.name, email: @user.email } }
    end

    assert_response 201
    assert_response :created
    assert_response_schema :user, @response
  end

  test 'should not create user if invalid' do
    assert_no_difference 'User.count' do
      post users_url, params: { user: { name: @user.name, email: '' } }
    end

    assert_response 422
    assert_response :unprocessable_entity
  end

  test 'should show user' do
    get user_url(@user)

    assert_response :success
    assert_response_schema :user, @response
  end

  test 'should update user' do
    patch user_url(@user), params: { user: { name: @user.name, email: @user.email } }

    assert_response 200
    assert_response :ok
    assert_response_schema :user, @response
  end

  test 'should not update user if invalid' do
    patch user_url(@user), params: { user: { name: @user.name, email: '' } }

    assert_response 422
    assert_response :unprocessable_entity
  end

  test 'should destroy user' do
    assert_difference 'User.count', -1 do
      delete user_url(@user)
    end

    assert_response 204
    assert_response :no_content
  end
end
