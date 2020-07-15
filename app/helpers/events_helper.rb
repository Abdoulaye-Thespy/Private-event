module EventsHelper

	def attend(y)
      if logged_in?
     link_to 'Attend', new_user_event_attended_event_path(current_user.id, y), class:"card-footer-item", data: {confirm: "Attend to this event?", disable_with: "Attending..." }
    end
	end
end
