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
        format.html { redirect_to root_path, notice: 'Tweeet was successfully created.' }
        format.json { render :show, status: :created, location: @event }
      else
        format.html { render :new }
        format.json { render json: @even.errors, status: :unprocessable_entity }
      end
    end
	end




    def event_params
      params.require(:event).permit(:description)
    end
end
