class Api::V1::MeetingsController < ApplicationController
    before_action :set_meeting, only: [:show, :update, :destroy]

    # GET /meetings
    def index   
      if logged_in
        @meetings = current_user.meetings
  
      render json: @meetings,except:[:created_at, :updated_at] ,status: 200

      else 
        render json: {
          error: "You must be logged in to see meetings"
        }
    end
    end
  
    # GET /meetings/1
    def show
      render json: @meeting
    end
  
    # POST /meetings
    def create
        @meeting = current_user.meetings.build(meeting_params)
      # @meeting = Meeting.new(meeting_params, current_user)
  
      if @meeting.save
        render json: MeetingSerializer.new(@meeting), status: :created
      else
        error_resp = {
        error: @meeting.errors.full_messages.to_sentence
      }
        render json: error_resp, status: :unprocessable_entity
      end
    end
  
    # PATCH/PUT /meetings/1
    def update
      if @meeting.update(meeting_params)
        render json: @meeting
      else
        render json: @meeting.errors, status: :unprocessable_entity
      end
    end
  
    # DELETE /meetings/1
    def destroy
      @meeting.destroy
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_meeting
        @meeting = Meeting.find(params[:id])
      end
  
      # Only allow a trusted parameter "white list" through.
      def meeting_params
        params.require(:meeting).permit(:title, :date, :start_time, :detail, :end_time, :comment)
      end
  
  

end
