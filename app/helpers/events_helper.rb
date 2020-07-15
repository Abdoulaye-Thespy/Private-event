module EventsHelper
  def attend(new_ev)
    link_to 'Attend', new_user_event_attended_event_path(current_user.id, new_ev), class: 'card-footer-item' if logged_in?
  end

  def back_login
    if logged_in?
      link_to 'Back', user_path(current_user.id), class: 'button is-link'
    else
      link_to 'Login', new_session_path, class: 'button is-warning'
    end
  end
end
