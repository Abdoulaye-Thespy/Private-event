module ApplicationHelper
  def render_my_card(arg)
    arg.each do |x|
      content_tag(:div, class: 'card middle') do
        content_tag(:header, class: 'card-header') do
          content_tag(:p, 'Events Created by YOU', class: 'card-header-title is-warning')
        end
        content_tag(:div, class: 'card-content') do
          content_tag(:div, class: 'content') do
            # x.description
            # x.creator.name
            content_tag(:time, datetime: '2016-1-1') do
              # x.date
            end
          end
        end
      end

      content_tag(:footer, class: 'card-footer') do
        content_tag(:a, 'View Participant', class: 'card-footer-item')
        link_to 'View_Participant', user_event_path(current_user.id, x.id), class: 'is-success card-footer-item'
        link_to 'Invitesss', user_event_path(current_user.id, x.id), class: 'is-success card-footer-item'
      end
    end
  end
end

# <div class="card middle">
#   <header class="card-header">
#     <p class="card-header-title is-warning">
#       upcoming event!! Hosted by: <strong>YOU</strong>
#     </p>
#     <a href="#" class="card-header-icon" aria-label="more options">
#       <span class="icon">
#         <i class="fas fa-angle-down" aria-hidden="true"></i>
#       </span>
#     </a>
#   </header>
#   <div class="card-content">
#     <div class="content">
#       <div><%= x.description %></div>
#       <div><%= x.creator.name%></div>
#       <br>
#       <time datetime="2016-1-1"><%= x.date %></time>
#     </div>
#   </div>
#   <footer class="card-footer">
#     <a href="#" class="card-footer-item">View Participant</a>
#     <%= link_to "Invite", user_event_path(current_user.id, x.id), class:"is-success card-footer-item"%>
#   </footer>
# </div>
