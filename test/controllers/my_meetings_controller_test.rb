require 'test_helper'

class MyMeetingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @my_meeting = my_meetings(:one)
  end

  test "should get index" do
    get my_meetings_url, as: :json
    assert_response :success
  end

  test "should create my_meeting" do
    assert_difference('MyMeeting.count') do
      post my_meetings_url, params: { my_meeting: { date: @my_meeting.date, details: @my_meeting.details, end_time: @my_meeting.end_time, start_time: @my_meeting.start_time, title: @my_meeting.title, user_id: @my_meeting.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show my_meeting" do
    get my_meeting_url(@my_meeting), as: :json
    assert_response :success
  end

  test "should update my_meeting" do
    patch my_meeting_url(@my_meeting), params: { my_meeting: { date: @my_meeting.date, details: @my_meeting.details, end_time: @my_meeting.end_time, start_time: @my_meeting.start_time, title: @my_meeting.title, user_id: @my_meeting.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy my_meeting" do
    assert_difference('MyMeeting.count', -1) do
      delete my_meeting_url(@my_meeting), as: :json
    end

    assert_response 204
  end
end
