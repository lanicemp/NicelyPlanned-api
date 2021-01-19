class Api::V1::MyMeetingsController < ApplicationController
  before_action :set_my_meeting, only: [:show, :update, :destroy]

  # GET /my_meetings
  def index
    @my_meetings = MyMeeting.all

    render json: @my_meetings
  end

  # GET /my_meetings/1
  def show
    render json: @my_meeting
  end

  # POST /my_meetings
  def create
    @my_meeting = MyMeeting.new(my_meeting_params)

    if @my_meeting.save
      render json: @my_meeting, status: :created
      # , location: @my_meeting
    else
      render json: @my_meeting.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /my_meetings/1
  def update
    if @my_meeting.update(my_meeting_params)
      render json: @my_meeting
    else
      render json: @my_meeting.errors, status: :unprocessable_entity
    end
  end

  # DELETE /my_meetings/1
  def destroy
    @my_meeting.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_my_meeting
      @my_meeting = MyMeeting.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def my_meeting_params
      params.require(:my_meeting).permit(:title, :date, :start_time, :end_time, :details, :user_id)
    end
end
