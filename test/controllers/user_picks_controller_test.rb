require 'test_helper'

class UserPicksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_pick = user_picks(:one)
  end

  test "should get index" do
    get user_picks_url, as: :json
    assert_response :success
  end

  test "should create user_pick" do
    assert_difference('UserPick.count') do
      post user_picks_url, params: { user_pick: { current_points: @user_pick.current_points, pick_points: @user_pick.pick_points, picks: @user_pick.picks } }, as: :json
    end

    assert_response 201
  end

  test "should show user_pick" do
    get user_pick_url(@user_pick), as: :json
    assert_response :success
  end

  test "should update user_pick" do
    patch user_pick_url(@user_pick), params: { user_pick: { current_points: @user_pick.current_points, pick_points: @user_pick.pick_points, picks: @user_pick.picks } }, as: :json
    assert_response 200
  end

  test "should destroy user_pick" do
    assert_difference('UserPick.count', -1) do
      delete user_pick_url(@user_pick), as: :json
    end

    assert_response 204
  end
end
