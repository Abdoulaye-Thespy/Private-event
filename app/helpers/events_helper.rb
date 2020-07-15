module EventsHelper

	def attend(y)
      if logged_in?
     link_to 'Attend', new_user_event_attended_event_path(current_user.id, y), class:"card-footer-item", data: {confirm: "Attend to this event?", disable_with: "Attending..." }
    end
	end

  def back_login
    if logged_in?
    	link_to 'Back',  user_path(current_user.id), class:"button is-link"
    else
      link_to 'Login',  new_session_path, class:"button is-warning"
    end
  end


end
