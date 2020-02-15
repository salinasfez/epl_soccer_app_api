require 'test_helper'

class MatchDaysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @match_day = match_days(:one)
  end

  test "should get index" do
    get match_days_url, as: :json
    assert_response :success
  end

  test "should create match_day" do
    assert_difference('MatchDay.count') do
      post match_days_url, params: { match_day: { day: @match_day.day, game: @match_day.game, team_a: @match_day.team_a, team_a_points: @match_day.team_a_points, team_b: @match_day.team_b, team_b_points: @match_day.team_b_points } }, as: :json
    end

    assert_response 201
  end

  test "should show match_day" do
    get match_day_url(@match_day), as: :json
    assert_response :success
  end

  test "should update match_day" do
    patch match_day_url(@match_day), params: { match_day: { day: @match_day.day, game: @match_day.game, team_a: @match_day.team_a, team_a_points: @match_day.team_a_points, team_b: @match_day.team_b, team_b_points: @match_day.team_b_points } }, as: :json
    assert_response 200
  end

  test "should destroy match_day" do
    assert_difference('MatchDay.count', -1) do
      delete match_day_url(@match_day), as: :json
    end

    assert_response 204
  end
end
