class AttendedEventsController < ApplicationController
def new
	@attendee=User.find_by_id(current_user.id)
	@event=Event.find_by_id(params[:event_id])
	attended_event=AttendedEvent.create attended_even: @event, attendee: @attendee
    redirect_to user_path(current_user.id)

end
	

	 def participation_params
      params.require(:user, :event).permit(:user_id, :event_id)
    end
		
end