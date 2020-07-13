class AttendedEventsController < ApplicationController
  def new
    @attendee = User.find_by_id(params[:user_id])
    @event = Event.find_by_id(params[:event_id])
    AttendedEvent.create attended_even: @event, attendee: @attendee
    redirect_to user_event_path(current_user.id, params[:event_id])
  end

  def participation_params
    params.require(:user, :event).permit(:user_id, :event_id)
  end
end
