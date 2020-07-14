module UsersHelper
  def login_logout
    if logged_in?
      content_tag(:div) do
        link_to 'Create_Event', new_user_event_path(current_user.id), class: 'button is-success'
      end

    else
      content_tag(:div) do
        link_to 'Login', new_session_path, class: 'button is-link'
      end
    end
  end
end
