class EventsController < ApplicationController

  def index
    @events=Event.all
  end

	def new
		@event = current_user.events.build
	end
	def create
    @event = current_user.events.build(event_params)

    respond_to do |format|
      if @event.save
        format.html { redirect_to user_path(current_user.id), notice: 'Event was successfully created.' }
        format.json { render :show, status: :created, location: @event }
      else
        format.html { render :new }
        format.json { render json: @even.errors, status: :unprocessable_entity }
      end
    end
	end

    def show
    @event=set_event
  end



    def set_event
      @event = Event.find(params[:id])
    end

    def event_params
      params.require(:event).permit(:loc_event, :date, :description)
    end

end
