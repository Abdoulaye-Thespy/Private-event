class EventsController < ApplicationController

  def index
    @up_events=Event.coming
    @prev_events=Event.past
  end

	def new
		@event = current_user.events.build
    @user = User.find_by_id(current_user.id)
	end
	def create
    @event = current_user.events.build(event_params)
    AttendedEvent.create attended_even: @event, attendee: @user
     respond_to do |format|
      if @event.save
        format.html { redirect_to user_path(current_user.id), notice: 'Event was successfully created.' }
        format.json { render :show, status: :created, location: @event }
      else
        flash
        format.html { render :new}
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
	end

  def show
    @event=set_event
    @attendees=@event.attendees
  end



    def set_event
      @event = Event.find(params[:id])
    end

    def event_params
      params.require(:event).permit(:loc_event, :date, :description)
    end

    def set_participant
     
    end

end
